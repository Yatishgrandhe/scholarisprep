const PLAYLIST_PATTERNS = [
  /[?&]list=([a-zA-Z0-9_-]+)/,
  /^([a-zA-Z0-9_-]{10,})$/,
];

export function extractPlaylistId(urlOrId: string): string | null {
  const trimmed = urlOrId.trim();
  if (!trimmed) return null;

  for (const pattern of PLAYLIST_PATTERNS) {
    const match = trimmed.match(pattern);
    if (match?.[1]) return match[1];
  }

  try {
    const parsed = new URL(trimmed);
    const list = parsed.searchParams.get("list");
    if (list) return list;
  } catch {
    /* not a URL */
  }

  return null;
}

export type YouTubePlaylistVideo = {
  videoId: string;
  title: string;
  description: string;
  position: number;
};

export type YouTubePlaylistInfo = {
  playlistId: string;
  title: string;
  videoCount: number;
  videos: YouTubePlaylistVideo[];
};

export async function fetchYouTubePlaylist(
  playlistUrl: string,
  apiKey: string,
): Promise<YouTubePlaylistInfo> {
  const playlistId = extractPlaylistId(playlistUrl);
  if (!playlistId) {
    throw new Error("Invalid YouTube playlist URL");
  }

  const videos: YouTubePlaylistVideo[] = [];
  let pageToken: string | undefined;
  let playlistTitle = "Untitled playlist";

  do {
    const params = new URLSearchParams({
      part: "snippet,contentDetails",
      playlistId,
      maxResults: "50",
      key: apiKey,
    });
    if (pageToken) params.set("pageToken", pageToken);

    const res = await fetch(
      `https://www.googleapis.com/youtube/v3/playlistItems?${params}`,
    );
    if (!res.ok) {
      const err = (await res.json().catch(() => ({}))) as { error?: { message?: string } };
      throw new Error(err.error?.message ?? "Failed to fetch playlist from YouTube");
    }

    const data = (await res.json()) as {
      nextPageToken?: string;
      items?: Array<{
        snippet?: {
          title?: string;
          description?: string;
          position?: number;
        };
        contentDetails?: { videoId?: string };
      }>;
    };

    for (const item of data.items ?? []) {
      const videoId = item.contentDetails?.videoId;
      if (!videoId) continue;
      videos.push({
        videoId,
        title: item.snippet?.title ?? "Untitled video",
        description: item.snippet?.description ?? "",
        position: item.snippet?.position ?? videos.length,
      });
    }

    pageToken = data.nextPageToken;
  } while (pageToken);

  if (videos.length === 0) {
    throw new Error("Playlist has no videos");
  }

  const metaParams = new URLSearchParams({
    part: "snippet,contentDetails",
    id: playlistId,
    key: apiKey,
  });
  const metaRes = await fetch(
    `https://www.googleapis.com/youtube/v3/playlists?${metaParams}`,
  );
  if (metaRes.ok) {
    const meta = (await metaRes.json()) as {
      items?: Array<{ snippet?: { title?: string } }>;
    };
    playlistTitle = meta.items?.[0]?.snippet?.title ?? playlistTitle;
  }

  videos.sort((a, b) => a.position - b.position);

  return {
    playlistId,
    title: playlistTitle,
    videoCount: videos.length,
    videos,
  };
}

export type YouTubeSearchResult = {
  videoId: string;
  title: string;
  channel: string;
};

/**
 * Search YouTube for the top relevant, embeddable videos for a query (best
 * first). Returns [] on error so callers can degrade gracefully.
 */
export async function searchYouTubeVideos(
  query: string,
  apiKey: string,
  maxResults = 5,
): Promise<YouTubeSearchResult[]> {
  const params = new URLSearchParams({
    part: "snippet",
    q: query,
    type: "video",
    videoEmbeddable: "true",
    safeSearch: "strict",
    relevanceLanguage: "en",
    maxResults: String(Math.min(10, Math.max(1, maxResults))),
    order: "relevance",
    key: apiKey,
  });

  try {
    const res = await fetch(
      `https://www.googleapis.com/youtube/v3/search?${params}`,
    );
    if (!res.ok) return [];
    const data = (await res.json()) as {
      items?: Array<{
        id?: { videoId?: string };
        snippet?: { title?: string; channelTitle?: string };
      }>;
    };
    const out: YouTubeSearchResult[] = [];
    for (const item of data.items ?? []) {
      const videoId = item.id?.videoId;
      if (!videoId) continue;
      out.push({
        videoId,
        title: item.snippet?.title ?? query,
        channel: item.snippet?.channelTitle ?? "",
      });
    }
    return out;
  } catch {
    return [];
  }
}

/**
 * Search YouTube for the single most relevant, embeddable video for a query.
 * Returns null when nothing suitable is found or the API errors.
 */
export async function searchYouTubeVideo(
  query: string,
  apiKey: string,
): Promise<YouTubeSearchResult | null> {
  const [first] = await searchYouTubeVideos(query, apiKey, 1);
  return first ?? null;
}

export function formatDuration(seconds: number | null | undefined): string {
  if (!seconds || seconds <= 0) return "—";
  const m = Math.floor(seconds / 60);
  const s = seconds % 60;
  return `${m}:${s.toString().padStart(2, "0")}`;
}
