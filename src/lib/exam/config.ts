/**
 * Digital SAT exam configuration — re-exports from digitalSat.ts for backward compatibility.
 */
export {
  type ExamSectionKey,
  type ExamSectionConfig,
  type DigitalSatModule,
  type DigitalSatModuleKey,
  type ExamSectionFilter,
  DIGITAL_SAT_MODULES,
  SAT_FULL_EXAM_SECTIONS,
  DIGITAL_SAT_TOTAL_QUESTIONS,
  DIGITAL_SAT_TOTAL_MINUTES,
  modulesForExamMode,
  moduleDurationSeconds,
  sectionDurationSeconds,
} from "./digitalSat";
