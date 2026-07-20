"use client";

import { format, startOfDay } from "date-fns";
import { Calendar as CalendarIcon } from "@phosphor-icons/react";
import { Calendar } from "@/components/ui/calendar";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";
import styles from "@/app/onboarding/onboarding.module.css";

type ExamDatePickerProps = {
  value?: Date;
  onChange: (date: Date | undefined) => void;
};

export function ExamDatePicker({ value, onChange }: ExamDatePickerProps) {
  const today = startOfDay(new Date());

  return (
    <Popover>
      <PopoverTrigger
        render={
          <button type="button" className={styles.calendarTrigger}>
            <span style={{ display: "flex", alignItems: "center", gap: 8 }}>
              <CalendarIcon size={18} />
              {value ? format(value, "PPP") : "Pick your exam date (optional)"}
            </span>
          </button>
        }
      />
      <PopoverContent
        className={`w-auto p-0 ${styles.calendarPopover}`}
        align="start"
      >
        <Calendar
          className={styles.calendarSolid}
          mode="single"
          selected={value}
          onSelect={onChange}
          disabled={(date) => date < today}
          defaultMonth={value ?? today}
        />
      </PopoverContent>
    </Popover>
  );
}
