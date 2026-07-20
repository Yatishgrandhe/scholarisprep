"use client";

import { useState } from "react";
import Link from "next/link";
import * as Popover from "@radix-ui/react-popover";
import { DotsThreeCircle, CaretRight, ArrowSquareOut } from "@phosphor-icons/react";
import {
  getMoreLinksForExam,
  type MoreLinkItem,
} from "@/lib/dashboard/navConfig";
import { useActiveExamType } from "@/hooks/useActiveExamType";
import styles from "./SidebarMoreFlyout.module.css";

type SidebarMoreFlyoutProps = {
  compact?: boolean;
  onBugReport?: () => void;
  onJoinClass?: () => void;
  onSupport?: () => void;
};

export function SidebarMoreFlyout({
  compact = false,
  onBugReport,
  onJoinClass,
  onSupport,
}: SidebarMoreFlyoutProps) {
  const [open, setOpen] = useState(false);
  const examType = useActiveExamType();
  const sections = getMoreLinksForExam(examType);

  const handleItemClick = (item: MoreLinkItem) => {
    if (item.onClick === "bug") {
      onBugReport?.();
      setOpen(false);
      return;
    }
    if (item.onClick === "join-class") {
      onJoinClass?.();
      setOpen(false);
      return;
    }
    if (item.onClick === "support") {
      onSupport?.();
      setOpen(false);
    }
  };

  return (
    <Popover.Root open={open} onOpenChange={setOpen}>
      <Popover.Trigger asChild>
        <button
          type="button"
          className={`${styles.trigger} ${compact ? styles.triggerCompact : ""}`}
          aria-expanded={open}
          title={compact ? "More" : undefined}
        >
          <DotsThreeCircle size={16} weight="fill" className={styles.triggerIcon} />
          {!compact ? (
            <>
              <span className={styles.triggerLabel}>More</span>
              <CaretRight size={16} className={styles.chevron} />
            </>
          ) : null}
        </button>
      </Popover.Trigger>
      <Popover.Portal>
        <Popover.Content
          className={styles.content}
          side="right"
          align="start"
          sideOffset={8}
          collisionPadding={16}
          style={{ zIndex: 100 }}
        >
          {sections.map((section) => (
            <div key={section.id} className={styles.section}>
              <p className={styles.sectionLabel}>{section.label}</p>
              <ul className={styles.list}>
                {section.items.map((item) => (
                  <li key={item.id}>
                    {item.href ? (
                      item.external ? (
                        <a
                          href={item.href}
                          className={styles.link}
                          target="_blank"
                          rel="noopener noreferrer"
                          onClick={() => setOpen(false)}
                        >
                          {item.label}
                          <ArrowSquareOut size={14} className={styles.external} />
                        </a>
                      ) : (
                        <Link
                          href={item.href}
                          className={styles.link}
                          onClick={() => setOpen(false)}
                        >
                          {item.label}
                        </Link>
                      )
                    ) : (
                      <button
                        type="button"
                        className={styles.link}
                        onClick={() => handleItemClick(item)}
                      >
                        {item.label}
                      </button>
                    )}
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </Popover.Content>
      </Popover.Portal>
    </Popover.Root>
  );
}
