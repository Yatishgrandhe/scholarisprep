"use client";

import { useState } from "react";
import { CaretDown } from "@phosphor-icons/react";
import styles from "./FAQ.module.css";

type FAQItem = { question: string; answer: string };

export function FAQ({ items }: { items: FAQItem[] }) {
  const [openIndex, setOpenIndex] = useState<number | null>(0);

  return (
    <div className={styles.faq}>
      {items.map((item, i) => (
        <div key={item.question} className={styles.item}>
          <button
            type="button"
            className={styles.trigger}
            aria-expanded={openIndex === i}
            onClick={() => setOpenIndex(openIndex === i ? null : i)}
          >
            {item.question}
            <CaretDown
              size={18}
              className={openIndex === i ? styles.iconOpen : styles.icon}
              aria-hidden
            />
          </button>
          {openIndex === i && (
            <div className={styles.answer}>
              <p>{item.answer}</p>
            </div>
          )}
        </div>
      ))}
    </div>
  );
}
