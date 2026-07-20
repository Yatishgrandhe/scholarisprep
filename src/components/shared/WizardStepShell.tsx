"use client";

import { ArrowLeft } from "@phosphor-icons/react";
import styles from "./WizardStepShell.module.css";

type WizardStepShellProps = {
  step: number;
  totalSteps: number;
  contextLabel?: string;
  title: string;
  subtitle?: string;
  children: React.ReactNode;
  onBack?: () => void;
  onContinue?: () => void | Promise<void>;
  continueLabel?: string;
  continueDisabled?: boolean;
  isLoading?: boolean;
  isFinalStep?: boolean;
  finalLabel?: string;
  showBackOnFirstStep?: boolean;
};

export function WizardStepShell({
  step,
  totalSteps,
  contextLabel,
  title,
  subtitle,
  children,
  onBack,
  onContinue,
  continueLabel = "Continue",
  continueDisabled = false,
  isLoading = false,
  isFinalStep = false,
  finalLabel = "Continue",
  showBackOnFirstStep = false,
}: WizardStepShellProps) {
  const stepLabel = contextLabel
    ? `Step ${step} of ${totalSteps} · ${contextLabel}`
    : `Step ${step} of ${totalSteps}`;

  const primaryLabel = isFinalStep ? finalLabel : continueLabel;
  const showBack = step > 1 || showBackOnFirstStep;

  return (
    <div className={styles.overlay} role="dialog" aria-modal="true" aria-labelledby="wizard-title">
      <div className={styles.card}>
        <div className={styles.header}>
          {showBack ? (
            <button
              type="button"
              className={styles.backBtn}
              onClick={onBack}
              aria-label="Go back"
            >
              <ArrowLeft size={20} weight="bold" />
            </button>
          ) : (
            <span className={styles.backSpacer} />
          )}
          <p className={styles.stepLabel}>{stepLabel}</p>
        </div>

        <div className={styles.body}>
          <h2 id="wizard-title" className={styles.title}>
            {title}
          </h2>
          {subtitle ? <p className={styles.subtitle}>{subtitle}</p> : null}
          <div className={styles.content}>{children}</div>
        </div>

        <div className={styles.footer}>
          {showBack ? (
            <button
              type="button"
              className={styles.footerBtnGhost}
              onClick={onBack}
              disabled={isLoading}
            >
              Back
            </button>
          ) : (
            <span />
          )}
          <button
            type="button"
            className={styles.footerBtnPrimary}
            onClick={() => void onContinue?.()}
            disabled={continueDisabled || isLoading}
          >
            {isLoading ? (
              <span className={styles.loading}>
                <span className={styles.spinner} aria-hidden />
                Checking...
              </span>
            ) : (
              primaryLabel
            )}
          </button>
        </div>
      </div>
    </div>
  );
}
