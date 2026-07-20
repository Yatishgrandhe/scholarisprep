import { create } from "zustand";
import { persist } from "zustand/middleware";
import type { SubjectConfig, UserActiveSubject } from "@/lib/subjectContext";
import type { ExamType } from "@/types/supabase";

const STORAGE_KEY = "scholaris_active_exam";

type SubjectStore = {
  activeSubject: ExamType | null;
  allSubjects: UserActiveSubject[];
  subjectConfigs: Record<string, SubjectConfig>;
  hydrated: boolean;
  setActiveSubject: (examType: ExamType) => void;
  setSubjects: (
    subjects: UserActiveSubject[],
    configs: SubjectConfig[],
    preferred?: ExamType | null,
  ) => void;
  addSubject: (subject: UserActiveSubject, config?: SubjectConfig) => void;
  removeSubject: (examType: ExamType) => void;
  setHydrated: (hydrated: boolean) => void;
};

export const useSubjectStore = create<SubjectStore>()(
  persist(
    (set, get) => ({
      activeSubject: null,
      allSubjects: [],
      subjectConfigs: {},
      hydrated: false,

      setActiveSubject: (examType) => {
        set({ activeSubject: examType });
      },

      setSubjects: (subjects, configs, preferred) => {
        const configMap: Record<string, SubjectConfig> = {};
        for (const config of configs) {
          configMap[config.exam_type] = config;
        }
        const primary =
          subjects.find((s) => s.is_primary)?.exam_type ??
          subjects[0]?.exam_type ??
          null;
        const current = get().activeSubject;
        const nextActive =
          preferred && subjects.some((s) => s.exam_type === preferred)
            ? preferred
            : current && subjects.some((s) => s.exam_type === current)
              ? current
              : primary;
        set({
          allSubjects: subjects,
          subjectConfigs: configMap,
          activeSubject: nextActive,
        });
      },

      addSubject: (subject, config) => {
        set((state) => {
          const exists = state.allSubjects.some(
            (s) => s.exam_type === subject.exam_type,
          );
          const allSubjects = exists
            ? state.allSubjects.map((s) =>
                s.exam_type === subject.exam_type ? subject : s,
              )
            : [...state.allSubjects, subject];
          const subjectConfigs = { ...state.subjectConfigs };
          if (config) subjectConfigs[config.exam_type] = config;
          return {
            allSubjects,
            subjectConfigs,
            activeSubject: state.activeSubject ?? subject.exam_type,
          };
        });
      },

      removeSubject: (examType) => {
        set((state) => {
          const allSubjects = state.allSubjects.filter(
            (s) => s.exam_type !== examType,
          );
          const { [examType]: _removed, ...subjectConfigs } = state.subjectConfigs;
          const activeSubject =
            state.activeSubject === examType
              ? (allSubjects.find((s) => s.is_primary)?.exam_type ??
                allSubjects[0]?.exam_type ??
                null)
              : state.activeSubject;
          return { allSubjects, subjectConfigs, activeSubject };
        });
      },

      setHydrated: (hydrated) => set({ hydrated }),
    }),
    {
      name: STORAGE_KEY,
      partialize: (state) => ({ activeSubject: state.activeSubject }),
      onRehydrateStorage: () => (state) => {
        state?.setHydrated(true);
      },
    },
  ),
);
