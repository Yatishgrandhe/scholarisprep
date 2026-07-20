"use client";

import Link from "next/link";
import { ArrowLeft } from "@phosphor-icons/react";
import styles from "./auth.module.css";

export function AuthBackLink() {
  return (
    <Link href="/" className={styles.backLink}>
      <ArrowLeft size={16} weight="bold" aria-hidden />
      Back to home
    </Link>
  );
}
