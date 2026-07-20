"use client";

import { useEffect, useMemo, useState } from "react";
import {
  BookmarkSimple,
  FunnelSimple,
  MagnifyingGlass,
} from "@phosphor-icons/react";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import { createClient } from "@/lib/supabase/client";
import { useMountLoad } from "@/hooks/useMountLoad";
import { fetchAllColleges, type College } from "@/lib/colleges/queries";
import {
  campusFitConfig,
  fitTierForCollege,
  formatCollegeSecondaryStat,
  sortColleges,
  tierLabel,
  tierRecommendation,
  TIER_CLASS,
  type CampusFitSortKey,
  type FitTier,
} from "@/lib/colleges/campusFit";
import {
  getSavedColleges,
  subscribeSavedColleges,
  toggleSavedCollege,
} from "@/lib/colleges/savedColleges";
import styles from "./page.module.css";

type TabKey = "all" | "saved";

function typeLabel(type: College["type"]): string | null {
  if (type === "public") return "Public";
  if (type === "private") return "Private Nonprofit";
  return null;
}

/** Up to two initials for the logo placeholder. */
function initials(name: string): string {
  const words = name
    .replace(/^(The|University of|College of)\s+/i, "")
    .split(/\s+/)
    .filter(Boolean);
  const first = words[0]?.[0] ?? "";
  const second = words.length > 1 ? words[words.length - 1][0] : "";
  return (first + second).toUpperCase() || name[0]?.toUpperCase() || "?";
}

export default function CollegeFinderPage() {
  const examType = useActiveExamType();
  const fitConfig = useMemo(() => campusFitConfig(examType), [examType]);

  const [colleges, setColleges] = useState<College[]>([]);
  const [loading, setLoading] = useState(true);
  const [query, setQuery] = useState("");
  const [myScore, setMyScore] = useState("");
  const [typeFilter, setTypeFilter] = useState<"all" | "public" | "private">(
    "all",
  );
  const [sort, setSort] = useState<CampusFitSortKey>(fitConfig.defaultSort);
  const [tab, setTab] = useState<TabKey>("all");
  const [saved, setSaved] = useState<string[]>([]);

  useEffect(() => {
    setMyScore("");
    setTypeFilter("all");
    setSort(fitConfig.defaultSort);
    setTab("all");
    setQuery("");
  }, [examType, fitConfig.defaultSort]);

  useEffect(() => {
    const supabase = createClient();
    let cancelled = false;
    void (async () => {
      const data = await fetchAllColleges(supabase);
      if (!cancelled) {
        setColleges(data);
        setLoading(false);
      }
    })();
    return () => {
      cancelled = true;
    };
  }, []);

  useMountLoad(() => setSaved(getSavedColleges(examType)), [examType]);
  useEffect(() => subscribeSavedColleges(examType, setSaved), [examType]);

  const savedSet = useMemo(() => new Set(saved), [saved]);
  // Ignore out-of-range scores so a leftover SAT value cannot score as AP/IB.
  const rawScore = myScore ? Number(myScore) : 0;
  const score =
    Number.isFinite(rawScore) &&
    rawScore >= fitConfig.scoreMin &&
    rawScore <= fitConfig.scoreMax
      ? rawScore
      : 0;
  const activeSort = fitConfig.sortOptions.some((o) => o.value === sort)
    ? sort
    : fitConfig.defaultSort;

  const results = useMemo(() => {
    const q = query.trim().toLowerCase();
    const filtered = colleges.filter((c) => {
      const matchQuery =
        !q ||
        c.name.toLowerCase().includes(q) ||
        (c.city ?? "").toLowerCase().includes(q) ||
        (c.state ?? "").toLowerCase().includes(q);
      const matchType = typeFilter === "all" || c.type === typeFilter;
      const matchTab = tab === "all" || savedSet.has(c.id);
      return matchQuery && matchType && matchTab;
    });

    const sorted = sortColleges(filtered, activeSort);

    return sorted.map((c) => ({
      ...c,
      tier: fitTierForCollege(c, score, fitConfig.mode),
    }));
  }, [
    colleges,
    query,
    typeFilter,
    activeSort,
    score,
    tab,
    savedSet,
    fitConfig.mode,
  ]);

  const activeFilterCount =
    (score ? 1 : 0) +
    (typeFilter !== "all" ? 1 : 0) +
    (activeSort !== fitConfig.defaultSort ? 1 : 0);

  const hasFilters = Boolean(query.trim()) || activeFilterCount > 0;

  const clearFilters = () => {
    setQuery("");
    setMyScore("");
    setTypeFilter("all");
    setSort(fitConfig.defaultSort);
    setTab("all");
  };

  const tierCounts = useMemo(() => {
    const counts: Record<FitTier, number> = {
      reach: 0,
      match: 0,
      safety: 0,
    };
    if (!score) return counts;
    for (const row of results) {
      if (row.tier) counts[row.tier] += 1;
    }
    return counts;
  }, [results, score]);

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <h1 className={styles.title}>{fitConfig.title}</h1>
        <p className={styles.subtitle}>{fitConfig.subtitle}</p>
        {score > 0 ? (
          <div className={styles.fitMeta}>
            <p className={styles.fitSummary} aria-live="polite">
              {tierCounts.match} match · {tierCounts.safety} safety ·{" "}
              {tierCounts.reach} reach
              {fitConfig.mode === "ap" || fitConfig.mode === "ib"
                ? ` for ${fitConfig.courseLabel}`
                : ""}
            </p>
            <ul className={styles.fitTips}>
              {(["match", "safety", "reach"] as FitTier[]).map((tier) => {
                if (tierCounts[tier] === 0) return null;
                const tip = tierRecommendation(examType, tier);
                if (!tip) return null;
                return (
                  <li key={tier} className={styles.fitTip}>
                    <span
                      className={`${styles.tier} ${styles[TIER_CLASS[tier]]}`}
                    >
                      {tierLabel(tier)}
                    </span>
                    <span>{tip}</span>
                  </li>
                );
              })}
            </ul>
          </div>
        ) : null}
      </header>

      <div className={styles.controls}>
        <div className={styles.controlsLeft}>
          <div className={styles.tabs} role="tablist" aria-label="College list">
            <button
              type="button"
              role="tab"
              aria-selected={tab === "all"}
              className={`${styles.tab} ${tab === "all" ? styles.tabActive : ""}`}
              onClick={() => setTab("all")}
            >
              All Colleges
            </button>
            <button
              type="button"
              role="tab"
              aria-selected={tab === "saved"}
              className={`${styles.tab} ${tab === "saved" ? styles.tabActive : ""}`}
              onClick={() => setTab("saved")}
            >
              <BookmarkSimple
                size={15}
                weight={tab === "saved" ? "fill" : "regular"}
                aria-hidden
              />
              Saved Colleges
              {saved.length > 0 ? (
                <span className={styles.tabCount}>{saved.length}</span>
              ) : null}
            </button>
          </div>

          <Popover>
            <PopoverTrigger className={styles.filterBtn}>
              <FunnelSimple size={16} weight="bold" aria-hidden />
              Sort &amp; filter
              {activeFilterCount > 0 ? (
                <span className={styles.filterDot}>{activeFilterCount}</span>
              ) : null}
            </PopoverTrigger>
            <PopoverContent align="start" className={styles.filterPanel}>
              <div className={styles.field}>
                <span className={styles.fieldLabel}>{fitConfig.scoreLabel}</span>
                <input
                  className={styles.panelInput}
                  type="number"
                  min={fitConfig.scoreMin}
                  max={fitConfig.scoreMax}
                  step={fitConfig.scoreStep}
                  value={myScore}
                  onChange={(e) => setMyScore(e.target.value)}
                  placeholder={fitConfig.scorePlaceholder}
                  aria-label={fitConfig.scoreLabel}
                />
                <span className={styles.fieldHint}>{fitConfig.scoreHint}</span>
              </div>
              <div className={styles.field}>
                <span className={styles.fieldLabel}>School type</span>
                <select
                  className={styles.panelSelect}
                  value={typeFilter}
                  onChange={(e) =>
                    setTypeFilter(
                      e.target.value as "all" | "public" | "private",
                    )
                  }
                  aria-label="School type"
                >
                  <option value="all">All types</option>
                  <option value="public">Public</option>
                  <option value="private">Private</option>
                </select>
              </div>
              <div className={styles.field}>
                <span className={styles.fieldLabel}>Sort by</span>
                <select
                  className={styles.panelSelect}
                  value={activeSort}
                  onChange={(e) => setSort(e.target.value as CampusFitSortKey)}
                  aria-label="Sort schools"
                >
                  {fitConfig.sortOptions.map((opt) => (
                    <option key={opt.value} value={opt.value}>
                      {opt.label}
                    </option>
                  ))}
                </select>
              </div>
              {hasFilters ? (
                <button
                  type="button"
                  className={styles.panelClear}
                  onClick={clearFilters}
                >
                  Clear all
                </button>
              ) : null}
            </PopoverContent>
          </Popover>
        </div>

        <div className={styles.searchWrap}>
          <MagnifyingGlass size={18} className={styles.searchIcon} aria-hidden />
          <input
            className={styles.search}
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            placeholder="Search colleges…"
            aria-label="Search colleges"
          />
        </div>
      </div>

      {loading ? (
        <div className={styles.grid}>
          {Array.from({ length: 8 }).map((_, i) => (
            <div key={i} className={`${styles.card} ${styles.cardSkeleton}`} />
          ))}
        </div>
      ) : results.length === 0 ? (
        <div className={styles.empty}>
          <div className={styles.emptyIcon}>
            <BookmarkSimple size={28} aria-hidden />
          </div>
          <h3 className={styles.emptyTitle}>
            {tab === "saved" ? "No saved colleges yet" : "No schools match"}
          </h3>
          <p className={styles.emptyText}>
            {tab === "saved"
              ? "Tap the bookmark on any college to save it here."
              : "Try a different search term or clear your filters."}
          </p>
          {tab === "saved" ? (
            <button
              type="button"
              className={styles.emptyBtn}
              onClick={() => setTab("all")}
            >
              Browse all colleges
            </button>
          ) : hasFilters ? (
            <button
              type="button"
              className={styles.emptyBtn}
              onClick={clearFilters}
            >
              Clear filters
            </button>
          ) : null}
        </div>
      ) : (
        <ul className={styles.grid}>
          {results.map((c) => {
            const isSaved = savedSet.has(c.id);
            const secondary = formatCollegeSecondaryStat(c, fitConfig.mode);
            const tLabel = typeLabel(c.type);
            return (
              <li key={c.id} className={styles.card}>
                <button
                  type="button"
                  className={`${styles.bookmark} ${isSaved ? styles.bookmarkOn : ""}`}
                  onClick={() => toggleSavedCollege(examType, c.id)}
                  aria-pressed={isSaved}
                  aria-label={
                    isSaved ? `Remove ${c.name} from saved` : `Save ${c.name}`
                  }
                >
                  <BookmarkSimple
                    size={18}
                    weight={isSaved ? "fill" : "regular"}
                    aria-hidden
                  />
                </button>

                <div className={styles.cardTop}>
                  <span className={styles.logo} aria-hidden>
                    {initials(c.name)}
                  </span>
                  <div className={styles.info}>
                    <h3 className={styles.name}>{c.name}</h3>
                    {c.city || c.state ? (
                      <p className={styles.loc}>
                        {[c.city, c.state].filter(Boolean).join(", ")}
                      </p>
                    ) : null}
                    {tLabel ? <p className={styles.type}>{tLabel}</p> : null}
                    {c.tier ? (
                      <span
                        className={`${styles.tier} ${styles[TIER_CLASS[c.tier]]}`}
                      >
                        {tierLabel(c.tier)}
                      </span>
                    ) : null}
                  </div>
                </div>

                <div className={styles.stats}>
                  <div className={styles.stat}>
                    <span className={styles.statLabel}>
                      {fitConfig.statLabels.primary}
                    </span>
                    <span className={styles.statValue}>
                      {c.acceptance_rate != null
                        ? `${c.acceptance_rate}%`
                        : "—"}
                    </span>
                  </div>
                  <div className={styles.stat}>
                    <span className={styles.statLabel}>
                      {fitConfig.statLabels.secondary}
                    </span>
                    <span className={styles.statValue}>{secondary}</span>
                  </div>
                </div>
              </li>
            );
          })}
        </ul>
      )}
    </div>
  );
}
