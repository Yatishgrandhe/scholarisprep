"use client";

import { useId } from "react";
import { CheckCircle, XCircle, Info } from "@phosphor-icons/react";
import { cn } from "@/lib/utils";
import { MathRenderer } from "./MathRenderer";
import { GRID_IN_DIRECTIONS } from "@/lib/question/gridIn";
import styles from "./GridInResponse.module.css";

type GridInResponseProps = {
  value: string;
  onChange: (value: string) => void;
  disabled?: boolean;
  revealed?: boolean;
  correct?: boolean;
  /** Canonical accepted answer to display after the answer is revealed. */
  acceptedDisplay?: string;
  maxLength?: number;
};

/**
 * Digital SAT student-produced response ("grid-in") input — the type-in-the-box
 * answer field, shown instead of A–D choices for math grid-in questions. Carries
 * the official answer-entry directions.
 */
export function GridInResponse({
  value,
  onChange,
  disabled = false,
  revealed = false,
  correct = false,
  acceptedDisplay,
  maxLength = 6,
}: GridInResponseProps) {
  const id = useId();
  return (
    <div className={styles.wrap}>
      <label htmlFor={id} className={styles.label}>
        Your answer
      </label>
      <input
        id={id}
        type="text"
        inputMode="text"
        autoComplete="off"
        autoCorrect="off"
        autoCapitalize="off"
        spellCheck={false}
        className={cn(
          styles.input,
          revealed && (correct ? styles.inputCorrect : styles.inputWrong),
        )}
        value={value}
        maxLength={maxLength}
        disabled={disabled}
        placeholder="e.g. 7, 3/2, or 1.5"
        onChange={(e) => onChange(e.target.value)}
        aria-describedby={`${id}-help`}
      />

      {revealed ? (
        <p
          className={cn(
            styles.result,
            correct ? styles.resultCorrect : styles.resultWrong,
          )}
          role="status"
          aria-live="polite"
        >
          {correct ? (
            <>
              <CheckCircle size={18} weight="fill" aria-hidden />
              <span>Correct! Well done.</span>
            </>
          ) : (
            <>
              <XCircle size={18} weight="fill" aria-hidden />
              <span>
                Correct answer:{" "}
                <strong className={styles.answerValue}>
                  <MathRenderer text={acceptedDisplay ?? ""} />
                </strong>
              </span>
            </>
          )}
        </p>
      ) : null}

      <details className={styles.help} id={`${id}-help`}>
        <summary className={styles.summary}>
          <Info size={15} aria-hidden />
          How to enter your answer (SAT format)
        </summary>
        <ul className={styles.directions}>
          {GRID_IN_DIRECTIONS.map((d, i) => (
            <li key={i}>{d}</li>
          ))}
        </ul>
      </details>
    </div>
  );
}
