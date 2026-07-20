"use client";

import { useQuery } from "@tanstack/react-query";
import { createClient } from "@/lib/supabase/client";
import type { Profile } from "@/types/supabase";

async function fetchProfile(): Promise<Profile | null> {
  const supabase = createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) return null;

  const { data, error } = await supabase
    .from("profiles")
    .select("*")
    .eq("id", user.id)
    .single();

  if (error) throw error;
  return data;
}

export function useProfile() {
  const query = useQuery({
    queryKey: ["profile"],
    queryFn: fetchProfile,
    retry: 2,
    staleTime: 30_000,
  });

  return {
    profile: query.data ?? null,
    loading: query.isLoading || query.isFetching,
    error: query.error,
    refetch: query.refetch,
    isSuccess: query.isSuccess,
  };
}
