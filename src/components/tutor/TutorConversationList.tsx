"use client";

import Link from "next/link";
import { Plus } from "@phosphor-icons/react";
import type { TutorConversationRow } from "@/lib/tutor/queries";
import styles from "./tutor.module.css";

type Props = {
  conversations: TutorConversationRow[];
  activeId?: string;
  onNewConversation: () => void;
  creating?: boolean;
  collapsible?: boolean;
  collapsed?: boolean;
  onToggleCollapse?: () => void;
};

export function TutorConversationList({
  conversations,
  activeId,
  onNewConversation,
  creating,
  collapsible,
  collapsed,
  onToggleCollapse,
}: Props) {
  return (
    <aside
      className={`${styles.sidebar} ${collapsed ? styles.sidebarCollapsed : ""}`}
    >
      <div className={styles.sidebarHeader}>
        <button
          type="button"
          className={styles.newChatBtn}
          onClick={onNewConversation}
          disabled={creating}
        >
          <Plus size={16} weight="bold" aria-hidden />
          New chat
        </button>
        {collapsible ? (
          <button
            type="button"
            className={styles.collapseBtn}
            onClick={onToggleCollapse}
            aria-label={collapsed ? "Expand sidebar" : "Collapse sidebar"}
          >
            {collapsed ? "»" : "«"}
          </button>
        ) : null}
      </div>
      {conversations.length === 0 ? (
        <p className={styles.emptyHint}>
          No conversations yet. Start a new chat to ask Scho anything.
        </p>
      ) : (
        <ul className={styles.convoList}>
          {conversations.map((c) => (
            <li key={c.id}>
              <Link
                href={`/dashboard/tutor/${c.id}`}
                className={
                  c.id === activeId ? styles.convoActive : styles.convoItem
                }
              >
                <span className={styles.convoTitle}>{c.title}</span>
              </Link>
            </li>
          ))}
        </ul>
      )}
    </aside>
  );
}
