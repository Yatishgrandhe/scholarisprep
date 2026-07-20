export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "14.5"
  }
  public: {
    Tables: {
      achievements: {
        Row: {
          criteria: Json | null
          description: string | null
          icon: string | null
          id: string
          key: string
          name: string
        }
        Insert: {
          criteria?: Json | null
          description?: string | null
          icon?: string | null
          id?: string
          key: string
          name: string
        }
        Update: {
          criteria?: Json | null
          description?: string | null
          icon?: string | null
          id?: string
          key?: string
          name?: string
        }
        Relationships: []
      }
      app_secrets: {
        Row: {
          hint: string | null
          key: string
          updated_at: string
          updated_by: string | null
          value: string
        }
        Insert: {
          hint?: string | null
          key: string
          updated_at?: string
          updated_by?: string | null
          value: string
        }
        Update: {
          hint?: string | null
          key?: string
          updated_at?: string
          updated_by?: string | null
          value?: string
        }
        Relationships: [
          {
            foreignKeyName: "app_secrets_updated_by_fkey"
            columns: ["updated_by"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      app_settings: {
        Row: {
          key: string
          updated_at: string
          updated_by: string | null
          value: Json
        }
        Insert: {
          key: string
          updated_at?: string
          updated_by?: string | null
          value?: Json
        }
        Update: {
          key?: string
          updated_at?: string
          updated_by?: string | null
          value?: Json
        }
        Relationships: [
          {
            foreignKeyName: "app_settings_updated_by_fkey"
            columns: ["updated_by"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      bug_reports: {
        Row: {
          admin_notes: string | null
          created_at: string
          description: string
          id: string
          page_url: string
          reporter_email: string | null
          status: string
          user_id: string | null
        }
        Insert: {
          admin_notes?: string | null
          created_at?: string
          description: string
          id?: string
          page_url: string
          reporter_email?: string | null
          status?: string
          user_id?: string | null
        }
        Update: {
          admin_notes?: string | null
          created_at?: string
          description?: string
          id?: string
          page_url?: string
          reporter_email?: string | null
          status?: string
          user_id?: string | null
        }
        Relationships: []
      }
      spark_interactions: {
        Row: {
          id: string
          user_id: string
          spark_type: string
          action: string
          exam_type: string | null
          conversation_id: string | null
          triggered_by_message: string | null
          created_at: string
        }
        Insert: {
          id?: string
          user_id: string
          spark_type: string
          action: string
          exam_type?: string | null
          conversation_id?: string | null
          triggered_by_message?: string | null
          created_at?: string
        }
        Update: {
          id?: string
          user_id?: string
          spark_type?: string
          action?: string
          exam_type?: string | null
          conversation_id?: string | null
          triggered_by_message?: string | null
          created_at?: string
        }
        Relationships: []
      }
      colleges: {
        Row: {
          acceptance_rate: number | null
          act_high: number | null
          act_low: number | null
          city: string | null
          created_at: string
          enrollment: number | null
          id: string
          name: string
          sat_high: number | null
          sat_low: number | null
          setting: string | null
          state: string | null
          type: string | null
          website: string | null
        }
        Insert: {
          acceptance_rate?: number | null
          act_high?: number | null
          act_low?: number | null
          city?: string | null
          created_at?: string
          enrollment?: number | null
          id?: string
          name: string
          sat_high?: number | null
          sat_low?: number | null
          setting?: string | null
          state?: string | null
          type?: string | null
          website?: string | null
        }
        Update: {
          acceptance_rate?: number | null
          act_high?: number | null
          act_low?: number | null
          city?: string | null
          created_at?: string
          enrollment?: number | null
          id?: string
          name?: string
          sat_high?: number | null
          sat_low?: number | null
          setting?: string | null
          state?: string | null
          type?: string | null
          website?: string | null
        }
        Relationships: []
      }
      content_reports: {
        Row: {
          admin_notes: string | null
          content_id: string
          content_type: string | null
          created_at: string | null
          id: string
          reason: string
          reporter_id: string | null
          resolved_at: string | null
          reviewed_by: string | null
          status: string | null
        }
        Insert: {
          admin_notes?: string | null
          content_id: string
          content_type?: string | null
          created_at?: string | null
          id?: string
          reason: string
          reporter_id?: string | null
          resolved_at?: string | null
          reviewed_by?: string | null
          status?: string | null
        }
        Update: {
          admin_notes?: string | null
          content_id?: string
          content_type?: string | null
          created_at?: string | null
          id?: string
          reason?: string
          reporter_id?: string | null
          resolved_at?: string | null
          reviewed_by?: string | null
          status?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "content_reports_reporter_id_fkey"
            columns: ["reporter_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "content_reports_reviewed_by_fkey"
            columns: ["reviewed_by"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      course_units: {
        Row: {
          ced_topics: string[]
          created_at: string
          exam_type: Database["public"]["Enums"]["exam_type"]
          id: string
          unit_code: string
          unit_name: string
          unit_order: number
          weight_hint: number | null
        }
        Insert: {
          ced_topics?: string[]
          created_at?: string
          exam_type: Database["public"]["Enums"]["exam_type"]
          id?: string
          unit_code: string
          unit_name: string
          unit_order?: number
          weight_hint?: number | null
        }
        Update: {
          ced_topics?: string[]
          created_at?: string
          exam_type?: Database["public"]["Enums"]["exam_type"]
          id?: string
          unit_code?: string
          unit_name?: string
          unit_order?: number
          weight_hint?: number | null
        }
        Relationships: []
      }
      courses: {
        Row: {
          avg_rating: number | null
          created_at: string | null
          creator_id: string | null
          description: string | null
          enrolled_count: number | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          featured_on_home: boolean
          id: string
          is_free: boolean | null
          level: Database["public"]["Enums"]["difficulty"] | null
          org_id: string | null
          price_cents: number | null
          slug: string | null
          source: Database["public"]["Enums"]["content_source"] | null
          status: Database["public"]["Enums"]["course_status"] | null
          stripe_price_id: string | null
          subject: string | null
          thumbnail_url: string | null
          title: string
          total_lessons: number | null
          updated_at: string | null
          youtube_playlist_url: string | null
        }
        Insert: {
          avg_rating?: number | null
          created_at?: string | null
          creator_id?: string | null
          description?: string | null
          enrolled_count?: number | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          featured_on_home?: boolean
          id?: string
          is_free?: boolean | null
          level?: Database["public"]["Enums"]["difficulty"] | null
          org_id?: string | null
          price_cents?: number | null
          slug?: string | null
          source?: Database["public"]["Enums"]["content_source"] | null
          status?: Database["public"]["Enums"]["course_status"] | null
          stripe_price_id?: string | null
          subject?: string | null
          thumbnail_url?: string | null
          title: string
          total_lessons?: number | null
          updated_at?: string | null
          youtube_playlist_url?: string | null
        }
        Update: {
          avg_rating?: number | null
          created_at?: string | null
          creator_id?: string | null
          description?: string | null
          enrolled_count?: number | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          featured_on_home?: boolean
          id?: string
          is_free?: boolean | null
          level?: Database["public"]["Enums"]["difficulty"] | null
          org_id?: string | null
          price_cents?: number | null
          slug?: string | null
          source?: Database["public"]["Enums"]["content_source"] | null
          status?: Database["public"]["Enums"]["course_status"] | null
          stripe_price_id?: string | null
          subject?: string | null
          thumbnail_url?: string | null
          title?: string
          total_lessons?: number | null
          updated_at?: string | null
          youtube_playlist_url?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "courses_creator_id_fkey"
            columns: ["creator_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "courses_org_id_fkey"
            columns: ["org_id"]
            isOneToOne: false
            referencedRelation: "organizations"
            referencedColumns: ["id"]
          },
        ]
      }
      diagnostic_pool_slots: {
        Row: {
          difficulty: Database["public"]["Enums"]["difficulty"]
          id: string
          math_domain: string | null
          pool_key: string
          slot_count: number
          sort_order: number
          subject: string
          topic: string | null
        }
        Insert: {
          difficulty: Database["public"]["Enums"]["difficulty"]
          id?: string
          math_domain?: string | null
          pool_key: string
          slot_count: number
          sort_order?: number
          subject: string
          topic?: string | null
        }
        Update: {
          difficulty?: Database["public"]["Enums"]["difficulty"]
          id?: string
          math_domain?: string | null
          pool_key?: string
          slot_count?: number
          sort_order?: number
          subject?: string
          topic?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "diagnostic_pool_slots_pool_key_fkey"
            columns: ["pool_key"]
            isOneToOne: false
            referencedRelation: "diagnostic_pools"
            referencedColumns: ["pool_key"]
          },
        ]
      }
      diagnostic_pools: {
        Row: {
          created_at: string
          description: string | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          is_active: boolean
          pool_key: string
          total_questions: number
        }
        Insert: {
          created_at?: string
          description?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"]
          is_active?: boolean
          pool_key: string
          total_questions?: number
        }
        Update: {
          created_at?: string
          description?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"]
          is_active?: boolean
          pool_key?: string
          total_questions?: number
        }
        Relationships: []
      }
      diagnostic_results: {
        Row: {
          exam_type: Database["public"]["Enums"]["exam_type"]
          id: string
          overall_score: number | null
          predicted_score: number | null
          recommended_focus: string[] | null
          session_id: string | null
          taken_at: string | null
          topic_scores: Json
          user_id: string | null
        }
        Insert: {
          exam_type: Database["public"]["Enums"]["exam_type"]
          id?: string
          overall_score?: number | null
          predicted_score?: number | null
          recommended_focus?: string[] | null
          session_id?: string | null
          taken_at?: string | null
          topic_scores: Json
          user_id?: string | null
        }
        Update: {
          exam_type?: Database["public"]["Enums"]["exam_type"]
          id?: string
          overall_score?: number | null
          predicted_score?: number | null
          recommended_focus?: string[] | null
          session_id?: string | null
          taken_at?: string | null
          topic_scores?: Json
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "diagnostic_results_session_id_fkey"
            columns: ["session_id"]
            isOneToOne: false
            referencedRelation: "exam_sessions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "diagnostic_results_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      diagnostic_session_items: {
        Row: {
          answered_at: string | null
          flagged: boolean
          id: string
          is_correct: boolean | null
          position: number
          question_id: string
          selected_option_id: string | null
          session_id: string
          time_spent_seconds: number
        }
        Insert: {
          answered_at?: string | null
          flagged?: boolean
          id?: string
          is_correct?: boolean | null
          position: number
          question_id: string
          selected_option_id?: string | null
          session_id: string
          time_spent_seconds?: number
        }
        Update: {
          answered_at?: string | null
          flagged?: boolean
          id?: string
          is_correct?: boolean | null
          position?: number
          question_id?: string
          selected_option_id?: string | null
          session_id?: string
          time_spent_seconds?: number
        }
        Relationships: [
          {
            foreignKeyName: "diagnostic_session_items_question_id_fkey"
            columns: ["question_id"]
            isOneToOne: false
            referencedRelation: "questions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "diagnostic_session_items_session_id_fkey"
            columns: ["session_id"]
            isOneToOne: false
            referencedRelation: "exam_sessions"
            referencedColumns: ["id"]
          },
        ]
      }
      enrollments: {
        Row: {
          completed_at: string | null
          course_id: string | null
          enrolled_at: string | null
          id: string
          progress_percent: number | null
          user_id: string | null
        }
        Insert: {
          completed_at?: string | null
          course_id?: string | null
          enrolled_at?: string | null
          id?: string
          progress_percent?: number | null
          user_id?: string | null
        }
        Update: {
          completed_at?: string | null
          course_id?: string | null
          enrolled_at?: string | null
          id?: string
          progress_percent?: number | null
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "enrollments_course_id_fkey"
            columns: ["course_id"]
            isOneToOne: false
            referencedRelation: "courses"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "enrollments_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      exam_sessions: {
        Row: {
          completed_at: string | null
          correct_count: number | null
          course_id: string | null
          created_at: string
          current_question_index: number
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          id: string
          is_timed: boolean | null
          metadata: Json | null
          pool_key: string | null
          question_order: string[] | null
          score_predicted: number | null
          score_raw: number | null
          section: string | null
          session_state: Json
          session_type: string
          started_at: string | null
          status: string
          time_limit_seconds: number | null
          time_spent_seconds: number | null
          topic: string | null
          total_questions: number | null
          user_id: string | null
        }
        Insert: {
          completed_at?: string | null
          correct_count?: number | null
          course_id?: string | null
          created_at?: string
          current_question_index?: number
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          id?: string
          is_timed?: boolean | null
          metadata?: Json | null
          pool_key?: string | null
          question_order?: string[] | null
          score_predicted?: number | null
          score_raw?: number | null
          section?: string | null
          session_state?: Json
          session_type: string
          started_at?: string | null
          status?: string
          time_limit_seconds?: number | null
          time_spent_seconds?: number | null
          topic?: string | null
          total_questions?: number | null
          user_id?: string | null
        }
        Update: {
          completed_at?: string | null
          correct_count?: number | null
          course_id?: string | null
          created_at?: string
          current_question_index?: number
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          id?: string
          is_timed?: boolean | null
          metadata?: Json | null
          pool_key?: string | null
          question_order?: string[] | null
          score_predicted?: number | null
          score_raw?: number | null
          section?: string | null
          session_state?: Json
          session_type?: string
          started_at?: string | null
          status?: string
          time_limit_seconds?: number | null
          time_spent_seconds?: number | null
          topic?: string | null
          total_questions?: number | null
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "exam_sessions_course_id_fkey"
            columns: ["course_id"]
            isOneToOne: false
            referencedRelation: "courses"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "exam_sessions_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      full_exam_forms: {
        Row: {
          blueprint: Json
          created_at: string
          exam_type: Database["public"]["Enums"]["exam_type"]
          form_id: string
          id: string
          is_active: boolean
          pool_tag: string | null
          updated_at: string
        }
        Insert: {
          blueprint?: Json
          created_at?: string
          exam_type: Database["public"]["Enums"]["exam_type"]
          form_id: string
          id?: string
          is_active?: boolean
          pool_tag?: string | null
          updated_at?: string
        }
        Update: {
          blueprint?: Json
          created_at?: string
          exam_type?: Database["public"]["Enums"]["exam_type"]
          form_id?: string
          id?: string
          is_active?: boolean
          pool_tag?: string | null
          updated_at?: string
        }
        Relationships: []
      }
      generated_courses: {
        Row: {
          content: Json
          created_at: string
          id: string
          source: string
          summary: string | null
          title: string
          user_id: string
          video_id: string | null
          youtube_url: string
        }
        Insert: {
          content?: Json
          created_at?: string
          id?: string
          source?: string
          summary?: string | null
          title: string
          user_id: string
          video_id?: string | null
          youtube_url: string
        }
        Update: {
          content?: Json
          created_at?: string
          id?: string
          source?: string
          summary?: string | null
          title?: string
          user_id?: string
          video_id?: string | null
          youtube_url?: string
        }
        Relationships: []
      }
      lesson_progress: {
        Row: {
          completed: boolean | null
          course_id: string | null
          id: string
          last_watched_at: string | null
          lesson_id: string | null
          user_id: string | null
          watch_seconds: number | null
        }
        Insert: {
          completed?: boolean | null
          course_id?: string | null
          id?: string
          last_watched_at?: string | null
          lesson_id?: string | null
          user_id?: string | null
          watch_seconds?: number | null
        }
        Update: {
          completed?: boolean | null
          course_id?: string | null
          id?: string
          last_watched_at?: string | null
          lesson_id?: string | null
          user_id?: string | null
          watch_seconds?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "lesson_progress_course_id_fkey"
            columns: ["course_id"]
            isOneToOne: false
            referencedRelation: "courses"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "lesson_progress_lesson_id_fkey"
            columns: ["lesson_id"]
            isOneToOne: false
            referencedRelation: "lessons"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "lesson_progress_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      lesson_video_library: {
        Row: {
          channel: string | null
          created_at: string
          exam_type: string
          id: string
          kind: string
          rank: number
          skill_id: string
          title: string | null
          video_id: string
        }
        Insert: {
          channel?: string | null
          created_at?: string
          exam_type: string
          id?: string
          kind: string
          rank?: number
          skill_id: string
          title?: string | null
          video_id: string
        }
        Update: {
          channel?: string | null
          created_at?: string
          exam_type?: string
          id?: string
          kind?: string
          rank?: number
          skill_id?: string
          title?: string | null
          video_id?: string
        }
        Relationships: []
      }
      lessons: {
        Row: {
          course_id: string | null
          created_at: string | null
          description: string | null
          duration_seconds: number | null
          id: string
          is_free_preview: boolean | null
          order_index: number
          summary: string | null
          title: string
          transcript: string | null
          updated_at: string | null
          youtube_video_id: string | null
        }
        Insert: {
          course_id?: string | null
          created_at?: string | null
          description?: string | null
          duration_seconds?: number | null
          id?: string
          is_free_preview?: boolean | null
          order_index?: number
          summary?: string | null
          title: string
          transcript?: string | null
          updated_at?: string | null
          youtube_video_id?: string | null
        }
        Update: {
          course_id?: string | null
          created_at?: string | null
          description?: string | null
          duration_seconds?: number | null
          id?: string
          is_free_preview?: boolean | null
          order_index?: number
          summary?: string | null
          title?: string
          transcript?: string | null
          updated_at?: string | null
          youtube_video_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "lessons_course_id_fkey"
            columns: ["course_id"]
            isOneToOne: false
            referencedRelation: "courses"
            referencedColumns: ["id"]
          },
        ]
      }
      multi_subject_study_plans: {
        Row: {
          baseline_score: number | null
          course_id: Database["public"]["Enums"]["exam_type"]
          exam_date: string | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          generated_at: string | null
          id: string
          last_updated: string
          plan_data: Json
          target_score: number | null
          user_id: string
          weekly_hours_allocated: number | null
        }
        Insert: {
          baseline_score?: number | null
          course_id: Database["public"]["Enums"]["exam_type"]
          exam_date?: string | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          generated_at?: string | null
          id?: string
          last_updated?: string
          plan_data?: Json
          target_score?: number | null
          user_id: string
          weekly_hours_allocated?: number | null
        }
        Update: {
          baseline_score?: number | null
          course_id?: Database["public"]["Enums"]["exam_type"]
          exam_date?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"]
          generated_at?: string | null
          id?: string
          last_updated?: string
          plan_data?: Json
          target_score?: number | null
          user_id?: string
          weekly_hours_allocated?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "multi_subject_study_plans_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      org_invites: {
        Row: {
          accepted_at: string | null
          created_at: string
          email: string
          expires_at: string
          id: string
          invited_by: string
          org_id: string
          role: Database["public"]["Enums"]["user_role"]
          token: string
        }
        Insert: {
          accepted_at?: string | null
          created_at?: string
          email: string
          expires_at?: string
          id?: string
          invited_by: string
          org_id: string
          role?: Database["public"]["Enums"]["user_role"]
          token?: string
        }
        Update: {
          accepted_at?: string | null
          created_at?: string
          email?: string
          expires_at?: string
          id?: string
          invited_by?: string
          org_id?: string
          role?: Database["public"]["Enums"]["user_role"]
          token?: string
        }
        Relationships: [
          {
            foreignKeyName: "org_invites_invited_by_fkey"
            columns: ["invited_by"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "org_invites_org_id_fkey"
            columns: ["org_id"]
            isOneToOne: false
            referencedRelation: "organizations"
            referencedColumns: ["id"]
          },
        ]
      }
      organizations: {
        Row: {
          created_at: string | null
          id: string
          logo_url: string | null
          max_members: number | null
          name: string
          owner_id: string | null
          plan: Database["public"]["Enums"]["subscription_plan"] | null
          slug: string
          updated_at: string | null
        }
        Insert: {
          created_at?: string | null
          id?: string
          logo_url?: string | null
          max_members?: number | null
          name: string
          owner_id?: string | null
          plan?: Database["public"]["Enums"]["subscription_plan"] | null
          slug: string
          updated_at?: string | null
        }
        Update: {
          created_at?: string | null
          id?: string
          logo_url?: string | null
          max_members?: number | null
          name?: string
          owner_id?: string | null
          plan?: Database["public"]["Enums"]["subscription_plan"] | null
          slug?: string
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "organizations_owner_id_fkey"
            columns: ["owner_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      passages: {
        Row: {
          content: string
          created_at: string
          exam_type: Database["public"]["Enums"]["exam_type"]
          id: string
          is_platform: boolean
          source_attribution: string | null
          stimulus_type: string
          title: string | null
          updated_at: string
          word_count: number | null
        }
        Insert: {
          content: string
          created_at?: string
          exam_type?: Database["public"]["Enums"]["exam_type"]
          id?: string
          is_platform?: boolean
          source_attribution?: string | null
          stimulus_type?: string
          title?: string | null
          updated_at?: string
          word_count?: number | null
        }
        Update: {
          content?: string
          created_at?: string
          exam_type?: Database["public"]["Enums"]["exam_type"]
          id?: string
          is_platform?: boolean
          source_attribution?: string | null
          stimulus_type?: string
          title?: string | null
          updated_at?: string
          word_count?: number | null
        }
        Relationships: []
      }
      practice_attempts: {
        Row: {
          correct_option: string | null
          created_at: string
          difficulty: string
          flagged: boolean
          id: string
          is_correct: boolean
          options: Json
          question_index: number
          question_text: string
          selected_option: string | null
          session_id: string
          stimulus_text: string | null
          time_seconds: number
          topic: string
          user_id: string
        }
        Insert: {
          correct_option?: string | null
          created_at?: string
          difficulty?: string
          flagged?: boolean
          id?: string
          is_correct?: boolean
          options?: Json
          question_index: number
          question_text: string
          selected_option?: string | null
          session_id: string
          stimulus_text?: string | null
          time_seconds?: number
          topic?: string
          user_id: string
        }
        Update: {
          correct_option?: string | null
          created_at?: string
          difficulty?: string
          flagged?: boolean
          id?: string
          is_correct?: boolean
          options?: Json
          question_index?: number
          question_text?: string
          selected_option?: string | null
          session_id?: string
          stimulus_text?: string | null
          time_seconds?: number
          topic?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "practice_attempts_session_id_fkey"
            columns: ["session_id"]
            isOneToOne: false
            referencedRelation: "practice_sessions"
            referencedColumns: ["id"]
          },
        ]
      }
      practice_sessions: {
        Row: {
          completed_at: string | null
          correct_count: number
          created_at: string
          difficulty: string
          exam_type: string
          id: string
          section: string
          started_at: string
          total_questions: number
          user_id: string
        }
        Insert: {
          completed_at?: string | null
          correct_count?: number
          created_at?: string
          difficulty?: string
          exam_type?: string
          id?: string
          section: string
          started_at?: string
          total_questions?: number
          user_id: string
        }
        Update: {
          completed_at?: string | null
          correct_count?: number
          created_at?: string
          difficulty?: string
          exam_type?: string
          id?: string
          section?: string
          started_at?: string
          total_questions?: number
          user_id?: string
        }
        Relationships: []
      }
      profiles: {
        Row: {
          avatar_url: string | null
          created_at: string | null
          email: string
          exam_date: string | null
          exam_goal: Database["public"]["Enums"]["exam_type"] | null
          exam_goals: string[] | null
          full_name: string | null
          id: string
          is_suspended: boolean
          onboarding_completed: boolean | null
          org_id: string | null
          role: Database["public"]["Enums"]["user_role"]
          stripe_customer_id: string | null
          updated_at: string | null
        }
        Insert: {
          avatar_url?: string | null
          created_at?: string | null
          email: string
          exam_date?: string | null
          exam_goal?: Database["public"]["Enums"]["exam_type"] | null
          exam_goals?: string[] | null
          full_name?: string | null
          id: string
          is_suspended?: boolean
          onboarding_completed?: boolean | null
          org_id?: string | null
          role?: Database["public"]["Enums"]["user_role"]
          stripe_customer_id?: string | null
          updated_at?: string | null
        }
        Update: {
          avatar_url?: string | null
          created_at?: string | null
          email?: string
          exam_date?: string | null
          exam_goal?: Database["public"]["Enums"]["exam_type"] | null
          exam_goals?: string[] | null
          full_name?: string | null
          id?: string
          is_suspended?: boolean
          onboarding_completed?: boolean | null
          org_id?: string | null
          role?: Database["public"]["Enums"]["user_role"]
          stripe_customer_id?: string | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "profiles_org_fk"
            columns: ["org_id"]
            isOneToOne: false
            referencedRelation: "organizations"
            referencedColumns: ["id"]
          },
        ]
      }
      question_attempts: {
        Row: {
          ai_explanation_requested: boolean | null
          ai_feedback: string | null
          ai_score: number | null
          answer_text: string | null
          created_at: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          graded_at: string | null
          grading_model: string | null
          hint_used: boolean | null
          id: string
          is_correct: boolean | null
          question_id: string | null
          rubric_scores: Json | null
          selected_option_id: string | null
          session_id: string | null
          subject_section: string | null
          time_spent_seconds: number | null
          user_id: string | null
        }
        Insert: {
          ai_explanation_requested?: boolean | null
          ai_feedback?: string | null
          ai_score?: number | null
          answer_text?: string | null
          created_at?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          graded_at?: string | null
          grading_model?: string | null
          hint_used?: boolean | null
          id?: string
          is_correct?: boolean | null
          question_id?: string | null
          rubric_scores?: Json | null
          selected_option_id?: string | null
          session_id?: string | null
          subject_section?: string | null
          time_spent_seconds?: number | null
          user_id?: string | null
        }
        Update: {
          ai_explanation_requested?: boolean | null
          ai_feedback?: string | null
          ai_score?: number | null
          answer_text?: string | null
          created_at?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          graded_at?: string | null
          grading_model?: string | null
          hint_used?: boolean | null
          id?: string
          is_correct?: boolean | null
          question_id?: string | null
          rubric_scores?: Json | null
          selected_option_id?: string | null
          session_id?: string | null
          subject_section?: string | null
          time_spent_seconds?: number | null
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "question_attempts_question_id_fkey"
            columns: ["question_id"]
            isOneToOne: false
            referencedRelation: "questions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "question_attempts_session_id_fkey"
            columns: ["session_id"]
            isOneToOne: false
            referencedRelation: "exam_sessions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "question_attempts_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      questions: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean
          diagnostic_eligible: boolean
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          max_points: number | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string
          question_type: Database["public"]["Enums"]["question_type"]
          rubric: Json | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          unit_code: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean
          diagnostic_eligible?: boolean
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          max_points?: number | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text: string
          question_type?: Database["public"]["Enums"]["question_type"]
          rubric?: Json | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          unit_code?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean
          diagnostic_eligible?: boolean
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          max_points?: number | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string
          question_type?: Database["public"]["Enums"]["question_type"]
          rubric?: Json | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          unit_code?: string | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "questions_course_id_fkey"
            columns: ["course_id"]
            isOneToOne: false
            referencedRelation: "courses"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "questions_created_by_fkey"
            columns: ["created_by"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "questions_lesson_id_fkey"
            columns: ["lesson_id"]
            isOneToOne: false
            referencedRelation: "lessons"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "questions_passage_id_fkey"
            columns: ["passage_id"]
            isOneToOne: false
            referencedRelation: "passages"
            referencedColumns: ["id"]
          },
        ]
      }
      questions_5opt_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_arerecipe_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_arevol_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_coe_backup_20260623: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_coe_backup_20260624: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_english_backup_20260625: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_expmodel_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_geo_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_gridexpl_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_iee_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_incontext_backup_20260623: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_ling_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_lintable_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_math_backup_20260614: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_math_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_math_fix_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_nrm_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_oia_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_protable_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_rat_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_rig_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_syn_backup_20260624: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_syn_lenfix_backup_20260624: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      questions_tva_backup_20260630: {
        Row: {
          ai_generated: boolean | null
          calculator_allowed: boolean | null
          challenge_only: boolean | null
          correct_answer: string | null
          course_id: string | null
          created_at: string | null
          created_by: string | null
          desmos_recommended: boolean | null
          diagnostic_eligible: boolean | null
          difficulty: Database["public"]["Enums"]["difficulty"] | null
          domain_id: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          explanation: string | null
          external_id: string | null
          figure_description: string | null
          generation_seed: string | null
          has_figure: boolean | null
          hint: string | null
          id: string | null
          is_platform_question: boolean | null
          lesson_id: string | null
          math_domain: string | null
          math_skill_code: string | null
          options: Json | null
          passage_id: string | null
          pool_key: string | null
          question_text: string | null
          question_type: Database["public"]["Enums"]["question_type"] | null
          section: string | null
          skill_id: string | null
          source: string | null
          source_metadata: Json | null
          stimulus_text: string | null
          stimulus_type: string | null
          subject: string | null
          subtopic: string | null
          tags: string[] | null
          topic: string | null
          updated_at: string | null
        }
        Insert: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Update: {
          ai_generated?: boolean | null
          calculator_allowed?: boolean | null
          challenge_only?: boolean | null
          correct_answer?: string | null
          course_id?: string | null
          created_at?: string | null
          created_by?: string | null
          desmos_recommended?: boolean | null
          diagnostic_eligible?: boolean | null
          difficulty?: Database["public"]["Enums"]["difficulty"] | null
          domain_id?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          explanation?: string | null
          external_id?: string | null
          figure_description?: string | null
          generation_seed?: string | null
          has_figure?: boolean | null
          hint?: string | null
          id?: string | null
          is_platform_question?: boolean | null
          lesson_id?: string | null
          math_domain?: string | null
          math_skill_code?: string | null
          options?: Json | null
          passage_id?: string | null
          pool_key?: string | null
          question_text?: string | null
          question_type?: Database["public"]["Enums"]["question_type"] | null
          section?: string | null
          skill_id?: string | null
          source?: string | null
          source_metadata?: Json | null
          stimulus_text?: string | null
          stimulus_type?: string | null
          subject?: string | null
          subtopic?: string | null
          tags?: string[] | null
          topic?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      saved_questions: {
        Row: {
          created_at: string
          exam_type: Database["public"]["Enums"]["exam_type"]
          id: string
          question_id: string
          user_id: string
        }
        Insert: {
          created_at?: string
          exam_type: Database["public"]["Enums"]["exam_type"]
          id?: string
          question_id: string
          user_id: string
        }
        Update: {
          created_at?: string
          exam_type?: Database["public"]["Enums"]["exam_type"]
          id?: string
          question_id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "saved_questions_question_id_fkey"
            columns: ["question_id"]
            isOneToOne: false
            referencedRelation: "questions"
            referencedColumns: ["id"]
          },
        ]
      }
      study_plan_videos: {
        Row: {
          channel: string | null
          exam_type: string
          fetched_at: string
          skill_id: string
          title: string | null
          video_id: string
        }
        Insert: {
          channel?: string | null
          exam_type: string
          fetched_at?: string
          skill_id: string
          title?: string | null
          video_id: string
        }
        Update: {
          channel?: string | null
          exam_type?: string
          fetched_at?: string
          skill_id?: string
          title?: string | null
          video_id?: string
        }
        Relationships: []
      }
      study_plans: {
        Row: {
          baseline_score: number | null
          course_id: Database["public"]["Enums"]["exam_type"]
          exam_date: string | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          generated_at: string | null
          id: string
          plan_data: Json
          target_score: number | null
          user_id: string
          weekly_hours: number | null
        }
        Insert: {
          baseline_score?: number | null
          course_id: Database["public"]["Enums"]["exam_type"]
          exam_date?: string | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          generated_at?: string | null
          id?: string
          plan_data?: Json
          target_score?: number | null
          user_id: string
          weekly_hours?: number | null
        }
        Update: {
          baseline_score?: number | null
          course_id?: Database["public"]["Enums"]["exam_type"]
          exam_date?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"]
          generated_at?: string | null
          id?: string
          plan_data?: Json
          target_score?: number | null
          user_id?: string
          weekly_hours?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "study_plans_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      subject_diagnostic_results: {
        Row: {
          exam_type: Database["public"]["Enums"]["exam_type"]
          id: string
          overall_score: number | null
          predicted_score: number | null
          recommended_focus: string[] | null
          section_scores: Json
          session_id: string | null
          strong_topics: string[] | null
          taken_at: string
          topic_scores: Json
          user_id: string
          weak_topics: string[] | null
        }
        Insert: {
          exam_type: Database["public"]["Enums"]["exam_type"]
          id?: string
          overall_score?: number | null
          predicted_score?: number | null
          recommended_focus?: string[] | null
          section_scores?: Json
          session_id?: string | null
          strong_topics?: string[] | null
          taken_at?: string
          topic_scores?: Json
          user_id: string
          weak_topics?: string[] | null
        }
        Update: {
          exam_type?: Database["public"]["Enums"]["exam_type"]
          id?: string
          overall_score?: number | null
          predicted_score?: number | null
          recommended_focus?: string[] | null
          section_scores?: Json
          session_id?: string | null
          strong_topics?: string[] | null
          taken_at?: string
          topic_scores?: Json
          user_id?: string
          weak_topics?: string[] | null
        }
        Relationships: [
          {
            foreignKeyName: "subject_diagnostic_results_session_id_fkey"
            columns: ["session_id"]
            isOneToOne: false
            referencedRelation: "exam_sessions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "subject_diagnostic_results_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      subject_registry: {
        Row: {
          calculator_policy: string
          created_at: string
          description: string | null
          display_name: string
          exam_duration_minutes: number | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          has_stimulus: boolean
          id: string
          passing_score: number | null
          question_formats: Json
          score_range: Json
          sections: Json
          short_code: string
          stimulus_types: string[] | null
          time_limits: Json
          topics: Json
          total_questions_full_exam: number | null
        }
        Insert: {
          calculator_policy?: string
          created_at?: string
          description?: string | null
          display_name: string
          exam_duration_minutes?: number | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          has_stimulus?: boolean
          id?: string
          passing_score?: number | null
          question_formats?: Json
          score_range?: Json
          sections?: Json
          short_code: string
          stimulus_types?: string[] | null
          time_limits?: Json
          topics?: Json
          total_questions_full_exam?: number | null
        }
        Update: {
          calculator_policy?: string
          created_at?: string
          description?: string | null
          display_name?: string
          exam_duration_minutes?: number | null
          exam_type?: Database["public"]["Enums"]["exam_type"]
          has_stimulus?: boolean
          id?: string
          passing_score?: number | null
          question_formats?: Json
          score_range?: Json
          sections?: Json
          short_code?: string
          stimulus_types?: string[] | null
          time_limits?: Json
          topics?: Json
          total_questions_full_exam?: number | null
        }
        Relationships: []
      }
      subscriptions: {
        Row: {
          cancel_at_period_end: boolean | null
          created_at: string | null
          current_period_end: string | null
          current_period_start: string | null
          id: string
          org_id: string | null
          plan: Database["public"]["Enums"]["subscription_plan"]
          status: Database["public"]["Enums"]["subscription_status"]
          stripe_price_id: string | null
          stripe_subscription_id: string | null
          updated_at: string | null
          user_id: string | null
        }
        Insert: {
          cancel_at_period_end?: boolean | null
          created_at?: string | null
          current_period_end?: string | null
          current_period_start?: string | null
          id?: string
          org_id?: string | null
          plan?: Database["public"]["Enums"]["subscription_plan"]
          status?: Database["public"]["Enums"]["subscription_status"]
          stripe_price_id?: string | null
          stripe_subscription_id?: string | null
          updated_at?: string | null
          user_id?: string | null
        }
        Update: {
          cancel_at_period_end?: boolean | null
          created_at?: string | null
          current_period_end?: string | null
          current_period_start?: string | null
          id?: string
          org_id?: string | null
          plan?: Database["public"]["Enums"]["subscription_plan"]
          status?: Database["public"]["Enums"]["subscription_status"]
          stripe_price_id?: string | null
          stripe_subscription_id?: string | null
          updated_at?: string | null
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "subscriptions_org_id_fkey"
            columns: ["org_id"]
            isOneToOne: false
            referencedRelation: "organizations"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "subscriptions_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      tutor_conversations: {
        Row: {
          context_id: string | null
          context_type: string | null
          created_at: string | null
          exam_type: Database["public"]["Enums"]["exam_type"] | null
          id: string
          subject_context: Json
          title: string | null
          updated_at: string | null
          user_id: string | null
        }
        Insert: {
          context_id?: string | null
          context_type?: string | null
          created_at?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          id?: string
          subject_context?: Json
          title?: string | null
          updated_at?: string | null
          user_id?: string | null
        }
        Update: {
          context_id?: string | null
          context_type?: string | null
          created_at?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"] | null
          id?: string
          subject_context?: Json
          title?: string | null
          updated_at?: string | null
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "tutor_conversations_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      tutor_messages: {
        Row: {
          content: string
          conversation_id: string | null
          created_at: string | null
          id: string
          role: string
        }
        Insert: {
          content: string
          conversation_id?: string | null
          created_at?: string | null
          id?: string
          role: string
        }
        Update: {
          content?: string
          conversation_id?: string | null
          created_at?: string | null
          id?: string
          role?: string
        }
        Relationships: [
          {
            foreignKeyName: "tutor_messages_conversation_id_fkey"
            columns: ["conversation_id"]
            isOneToOne: false
            referencedRelation: "tutor_conversations"
            referencedColumns: ["id"]
          },
        ]
      }
      user_achievements: {
        Row: {
          achievement_id: string | null
          earned_at: string | null
          id: string
          user_id: string | null
        }
        Insert: {
          achievement_id?: string | null
          earned_at?: string | null
          id?: string
          user_id?: string | null
        }
        Update: {
          achievement_id?: string | null
          earned_at?: string | null
          id?: string
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "user_achievements_achievement_id_fkey"
            columns: ["achievement_id"]
            isOneToOne: false
            referencedRelation: "achievements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "user_achievements_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      user_active_subjects: {
        Row: {
          baseline_score: number | null
          created_at: string
          exam_date: string | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          id: string
          is_primary: boolean
          priority: number
          target_score: number | null
          updated_at: string
          user_id: string
        }
        Insert: {
          baseline_score?: number | null
          created_at?: string
          exam_date?: string | null
          exam_type: Database["public"]["Enums"]["exam_type"]
          id?: string
          is_primary?: boolean
          priority?: number
          target_score?: number | null
          updated_at?: string
          user_id: string
        }
        Update: {
          baseline_score?: number | null
          created_at?: string
          exam_date?: string | null
          exam_type?: Database["public"]["Enums"]["exam_type"]
          id?: string
          is_primary?: boolean
          priority?: number
          target_score?: number | null
          updated_at?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "user_active_subjects_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: false
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      user_ai_settings: {
        Row: {
          updated_at: string
          user_id: string
        }
        Insert: {
          updated_at?: string
          user_id: string
        }
        Update: {
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      user_streaks: {
        Row: {
          current_streak: number | null
          id: string
          last_activity_date: string | null
          longest_streak: number | null
          updated_at: string | null
          user_id: string | null
        }
        Insert: {
          current_streak?: number | null
          id?: string
          last_activity_date?: string | null
          longest_streak?: number | null
          updated_at?: string | null
          user_id?: string | null
        }
        Update: {
          current_streak?: number | null
          id?: string
          last_activity_date?: string | null
          longest_streak?: number | null
          updated_at?: string | null
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "user_streaks_user_id_fkey"
            columns: ["user_id"]
            isOneToOne: true
            referencedRelation: "profiles"
            referencedColumns: ["id"]
          },
        ]
      }
      user_vocabulary_progress: {
        Row: {
          created_at: string
          id: string
          is_saved: boolean
          last_reviewed_at: string | null
          mastery: number
          times_reviewed: number
          updated_at: string
          user_id: string
          word_id: string
        }
        Insert: {
          created_at?: string
          id?: string
          is_saved?: boolean
          last_reviewed_at?: string | null
          mastery?: number
          times_reviewed?: number
          updated_at?: string
          user_id: string
          word_id: string
        }
        Update: {
          created_at?: string
          id?: string
          is_saved?: boolean
          last_reviewed_at?: string | null
          mastery?: number
          times_reviewed?: number
          updated_at?: string
          user_id?: string
          word_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "user_vocabulary_progress_word_id_fkey"
            columns: ["word_id"]
            isOneToOne: false
            referencedRelation: "vocabulary_words"
            referencedColumns: ["id"]
          },
        ]
      }
      vocabulary_words: {
        Row: {
          created_at: string
          definition: string
          difficulty: Database["public"]["Enums"]["difficulty"]
          exam_type: Database["public"]["Enums"]["exam_type"]
          example_sentence: string | null
          id: string
          part_of_speech: string | null
          word: string
        }
        Insert: {
          created_at?: string
          definition: string
          difficulty?: Database["public"]["Enums"]["difficulty"]
          exam_type?: Database["public"]["Enums"]["exam_type"]
          example_sentence?: string | null
          id?: string
          part_of_speech?: string | null
          word: string
        }
        Update: {
          created_at?: string
          definition?: string
          difficulty?: Database["public"]["Enums"]["difficulty"]
          exam_type?: Database["public"]["Enums"]["exam_type"]
          example_sentence?: string | null
          id?: string
          part_of_speech?: string | null
          word?: string
        }
        Relationships: []
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      count_platform_questions: {
        Args: {
          p_challenge_only?: boolean
          p_difficulty?: string
          p_exam_type: string
          p_unit_code?: string
        }
        Returns: number
      }
      count_platform_questions_by_unit: {
        Args: {
          p_challenge_only?: boolean
          p_difficulty?: string
          p_exam_type: string
        }
        Returns: {
          question_count: number
          unit_code: string
        }[]
      }
      current_user_org_id: { Args: never; Returns: string }
      draw_diagnostic_question_ids: {
        Args: {
          p_exam_type?: Database["public"]["Enums"]["exam_type"]
          p_pool_key: string
        }
        Returns: string[]
      }
      is_org_admin: { Args: never; Returns: boolean }
      is_platform_admin: { Args: never; Returns: boolean }
      list_platform_question_ids: {
        Args: {
          p_challenge_only?: boolean
          p_difficulty?: string
          p_exam_type: string
          p_limit?: number
          p_offset?: number
          p_unit_code?: string
        }
        Returns: {
          id: string
        }[]
      }
      profile_in_my_org: { Args: { target_user_id: string }; Returns: boolean }
      question_counts_by_skill: {
        Args: { p_exam_type: string }
        Returns: {
          challenged: number
          section: string
          skill_id: string
          total: number
        }[]
      }
      question_stimulus: { Args: { p_question_id: string }; Returns: string }
      start_diagnostic_session: {
        Args: {
          p_exam_type?: Database["public"]["Enums"]["exam_type"]
          p_pool_key: string
        }
        Returns: string
      }
      validate_question_options: {
        Args: { correct: string; opts: Json; qtype: string }
        Returns: boolean
      }
    }
    Enums: {
      content_source: "youtube" | "upload" | "document" | "manual"
      course_status: "draft" | "pending_review" | "published" | "archived"
      difficulty: "easy" | "medium" | "hard" | "expert"
      exam_type:
        | "SAT"
        | "ACT"
        | "JAMB"
        | "GRE"
        | "GMAT"
        | "CUSTOM"
        | "AP_BIOLOGY"
        | "AP_CHEMISTRY"
        | "AP_PHYSICS"
        | "AP_CALCULUS_AB"
        | "AP_CALCULUS_BC"
        | "AP_STATISTICS"
        | "AP_ENGLISH"
        | "AP_US_HISTORY"
        | "AP_WORLD_HISTORY"
        | "AP_PSYCHOLOGY"
        | "AP_ECONOMICS"
        | "AP_COMPUTER_SCIENCE"
        | "PSAT"
        | "LSAT"
        | "MCAT"
        | "TOEFL"
        | "IELTS"
        | "AP_SEMINAR"
        | "AP_RESEARCH"
        | "AP_ART_HISTORY"
        | "AP_MUSIC_THEORY"
        | "AP_2D_ART_DESIGN"
        | "AP_3D_ART_DESIGN"
        | "AP_DRAWING"
        | "AP_ENGLISH_LANG"
        | "AP_ENGLISH_LIT"
        | "AP_AFRICAN_AMERICAN_STUDIES"
        | "AP_COMPARATIVE_GOVERNMENT"
        | "AP_EUROPEAN_HISTORY"
        | "AP_HUMAN_GEOGRAPHY"
        | "AP_MACROECONOMICS"
        | "AP_MICROECONOMICS"
        | "AP_US_GOVERNMENT"
        | "AP_PRECALCULUS"
        | "AP_COMPUTER_SCIENCE_A"
        | "AP_COMPUTER_SCIENCE_PRINCIPLES"
        | "AP_ENVIRONMENTAL_SCIENCE"
        | "AP_PHYSICS_1"
        | "AP_PHYSICS_2"
        | "AP_PHYSICS_C_MECHANICS"
        | "AP_PHYSICS_C_EM"
        | "AP_CHINESE"
        | "AP_FRENCH"
        | "AP_GERMAN"
        | "AP_ITALIAN"
        | "AP_JAPANESE"
        | "AP_LATIN"
        | "AP_SPANISH_LANG"
        | "AP_SPANISH_LIT"
        | "IB_ENG_A_LIT_SL"
        | "IB_ENG_A_LIT_HL"
        | "IB_ENG_A_LAL_SL"
        | "IB_ENG_A_LAL_HL"
        | "IB_LANG_A_LIT_PACK"
        | "IB_LANG_A_LAL_PACK"
        | "IB_ENG_B_SL"
        | "IB_ENG_B_HL"
        | "IB_SPANISH_B_SL"
        | "IB_SPANISH_B_HL"
        | "IB_FRENCH_B_SL"
        | "IB_FRENCH_B_HL"
        | "IB_LANG_B_PACK"
        | "IB_LANG_AB_INITIO_PACK"
        | "IB_CLASSICAL_LANG_SL"
        | "IB_CLASSICAL_LANG_HL"
        | "IB_HISTORY_SL"
        | "IB_HISTORY_HL"
        | "IB_ECONOMICS_SL"
        | "IB_ECONOMICS_HL"
        | "IB_PSYCHOLOGY_SL"
        | "IB_PSYCHOLOGY_HL"
        | "IB_BUSINESS_MANAGEMENT_SL"
        | "IB_BUSINESS_MANAGEMENT_HL"
        | "IB_GEOGRAPHY_SL"
        | "IB_GEOGRAPHY_HL"
        | "IB_GLOBAL_POLITICS_SL"
        | "IB_GLOBAL_POLITICS_HL"
        | "IB_PHILOSOPHY_SL"
        | "IB_PHILOSOPHY_HL"
        | "IB_ANTHROPOLOGY_SL"
        | "IB_ANTHROPOLOGY_HL"
        | "IB_DIGITAL_SOCIETY_SL"
        | "IB_DIGITAL_SOCIETY_HL"
        | "IB_WORLD_RELIGIONS_SL"
        | "IB_BIOLOGY_SL"
        | "IB_BIOLOGY_HL"
        | "IB_CHEMISTRY_SL"
        | "IB_CHEMISTRY_HL"
        | "IB_PHYSICS_SL"
        | "IB_PHYSICS_HL"
        | "IB_COMPUTER_SCIENCE_SL"
        | "IB_COMPUTER_SCIENCE_HL"
        | "IB_DESIGN_TECHNOLOGY_SL"
        | "IB_DESIGN_TECHNOLOGY_HL"
        | "IB_SEHS_SL"
        | "IB_SEHS_HL"
        | "IB_ESS_SL"
        | "IB_ESS_HL"
        | "IB_MATH_AA_SL"
        | "IB_MATH_AA_HL"
        | "IB_MATH_AI_SL"
        | "IB_MATH_AI_HL"
        | "IB_VISUAL_ARTS_SL"
        | "IB_VISUAL_ARTS_HL"
        | "IB_MUSIC_SL"
        | "IB_MUSIC_HL"
        | "IB_THEATRE_SL"
        | "IB_THEATRE_HL"
        | "IB_FILM_SL"
        | "IB_FILM_HL"
        | "IB_DANCE_SL"
        | "IB_DANCE_HL"
        | "IB_TOK"
        | "IB_EE"
      question_type:
        | "multiple_choice"
        | "short_answer"
        | "free_response"
        | "grid_in"
      subscription_plan:
        | "free"
        | "student_monthly"
        | "student_annual"
        | "creator"
        | "business"
      subscription_status:
        | "active"
        | "canceled"
        | "past_due"
        | "trialing"
        | "incomplete"
      user_role: "student" | "creator" | "org_admin" | "platform_admin"
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {
      content_source: ["youtube", "upload", "document", "manual"],
      course_status: ["draft", "pending_review", "published", "archived"],
      difficulty: ["easy", "medium", "hard", "expert"],
      exam_type: [
        "SAT",
        "ACT",
        "JAMB",
        "GRE",
        "GMAT",
        "CUSTOM",
        "AP_BIOLOGY",
        "AP_CHEMISTRY",
        "AP_PHYSICS",
        "AP_CALCULUS_AB",
        "AP_CALCULUS_BC",
        "AP_STATISTICS",
        "AP_ENGLISH",
        "AP_US_HISTORY",
        "AP_WORLD_HISTORY",
        "AP_PSYCHOLOGY",
        "AP_ECONOMICS",
        "AP_COMPUTER_SCIENCE",
        "PSAT",
        "LSAT",
        "MCAT",
        "TOEFL",
        "IELTS",
        "AP_SEMINAR",
        "AP_RESEARCH",
        "AP_ART_HISTORY",
        "AP_MUSIC_THEORY",
        "AP_2D_ART_DESIGN",
        "AP_3D_ART_DESIGN",
        "AP_DRAWING",
        "AP_ENGLISH_LANG",
        "AP_ENGLISH_LIT",
        "AP_AFRICAN_AMERICAN_STUDIES",
        "AP_COMPARATIVE_GOVERNMENT",
        "AP_EUROPEAN_HISTORY",
        "AP_HUMAN_GEOGRAPHY",
        "AP_MACROECONOMICS",
        "AP_MICROECONOMICS",
        "AP_US_GOVERNMENT",
        "AP_PRECALCULUS",
        "AP_COMPUTER_SCIENCE_A",
        "AP_COMPUTER_SCIENCE_PRINCIPLES",
        "AP_ENVIRONMENTAL_SCIENCE",
        "AP_PHYSICS_1",
        "AP_PHYSICS_2",
        "AP_PHYSICS_C_MECHANICS",
        "AP_PHYSICS_C_EM",
        "AP_CHINESE",
        "AP_FRENCH",
        "AP_GERMAN",
        "AP_ITALIAN",
        "AP_JAPANESE",
        "AP_LATIN",
        "AP_SPANISH_LANG",
        "AP_SPANISH_LIT",
        "IB_ENG_A_LIT_SL",
        "IB_ENG_A_LIT_HL",
        "IB_ENG_A_LAL_SL",
        "IB_ENG_A_LAL_HL",
        "IB_LANG_A_LIT_PACK",
        "IB_LANG_A_LAL_PACK",
        "IB_ENG_B_SL",
        "IB_ENG_B_HL",
        "IB_SPANISH_B_SL",
        "IB_SPANISH_B_HL",
        "IB_FRENCH_B_SL",
        "IB_FRENCH_B_HL",
        "IB_LANG_B_PACK",
        "IB_LANG_AB_INITIO_PACK",
        "IB_CLASSICAL_LANG_SL",
        "IB_CLASSICAL_LANG_HL",
        "IB_HISTORY_SL",
        "IB_HISTORY_HL",
        "IB_ECONOMICS_SL",
        "IB_ECONOMICS_HL",
        "IB_PSYCHOLOGY_SL",
        "IB_PSYCHOLOGY_HL",
        "IB_BUSINESS_MANAGEMENT_SL",
        "IB_BUSINESS_MANAGEMENT_HL",
        "IB_GEOGRAPHY_SL",
        "IB_GEOGRAPHY_HL",
        "IB_GLOBAL_POLITICS_SL",
        "IB_GLOBAL_POLITICS_HL",
        "IB_PHILOSOPHY_SL",
        "IB_PHILOSOPHY_HL",
        "IB_ANTHROPOLOGY_SL",
        "IB_ANTHROPOLOGY_HL",
        "IB_DIGITAL_SOCIETY_SL",
        "IB_DIGITAL_SOCIETY_HL",
        "IB_WORLD_RELIGIONS_SL",
        "IB_BIOLOGY_SL",
        "IB_BIOLOGY_HL",
        "IB_CHEMISTRY_SL",
        "IB_CHEMISTRY_HL",
        "IB_PHYSICS_SL",
        "IB_PHYSICS_HL",
        "IB_COMPUTER_SCIENCE_SL",
        "IB_COMPUTER_SCIENCE_HL",
        "IB_DESIGN_TECHNOLOGY_SL",
        "IB_DESIGN_TECHNOLOGY_HL",
        "IB_SEHS_SL",
        "IB_SEHS_HL",
        "IB_ESS_SL",
        "IB_ESS_HL",
        "IB_MATH_AA_SL",
        "IB_MATH_AA_HL",
        "IB_MATH_AI_SL",
        "IB_MATH_AI_HL",
        "IB_VISUAL_ARTS_SL",
        "IB_VISUAL_ARTS_HL",
        "IB_MUSIC_SL",
        "IB_MUSIC_HL",
        "IB_THEATRE_SL",
        "IB_THEATRE_HL",
        "IB_FILM_SL",
        "IB_FILM_HL",
        "IB_DANCE_SL",
        "IB_DANCE_HL",
        "IB_TOK",
        "IB_EE",
      ],
      question_type: [
        "multiple_choice",
        "short_answer",
        "free_response",
        "grid_in",
      ],
      subscription_plan: [
        "free",
        "student_monthly",
        "student_annual",
        "creator",
        "business",
      ],
      subscription_status: [
        "active",
        "canceled",
        "past_due",
        "trialing",
        "incomplete",
      ],
      user_role: ["student", "creator", "org_admin", "platform_admin"],
    },
  },
} as const

// Convenience aliases used throughout the application.
export type UserRole = Enums<"user_role">
export type SubscriptionPlan = Enums<"subscription_plan">
export type SubscriptionStatus = Enums<"subscription_status">
export type CourseStatus = Enums<"course_status">
export type Difficulty = Enums<"difficulty">
export type ExamType = Enums<"exam_type">
export type Profile = Tables<"profiles">
export type ContentReportStatus = "open" | "reviewing" | "resolved" | "dismissed"
