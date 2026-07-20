"use client";

import { useMemo, useState } from "react";
import styles from "./college-finder.module.css";

const COLLEGES = [
  { name: "Stanford University", location: "CA", sat: "1470–1570", act: "33–35" },
  { name: "UCLA", location: "CA", sat: "1290–1510", act: "27–34" },
  { name: "University of Michigan", location: "MI", sat: "1340–1530", act: "31–34" },
  { name: "NYU", location: "NY", sat: "1370–1540", act: "31–34" },
  { name: "Georgia Tech", location: "GA", sat: "1370–1530", act: "31–35" },
  { name: "Ohio State University", location: "OH", sat: "1240–1450", act: "27–32" },
];

export function CollegeFinderClient() {
  const [query, setQuery] = useState("");
  const [minScore, setMinScore] = useState("");

  const results = useMemo(() => {
    const q = query.trim().toLowerCase();
    const min = minScore ? Number(minScore) : 0;
    return COLLEGES.filter((c) => {
      const matchQuery =
        !q || c.name.toLowerCase().includes(q) || c.location.toLowerCase().includes(q);
      const lowSat = parseInt(c.sat.split("–")[0] ?? "0", 10);
      return matchQuery && (!min || lowSat >= min);
    });
  }, [query, minScore]);

  return (
    <div className={styles.wrap}>
      <h1 className={styles.title}>Campus Fit</h1>
      <p className={styles.sub}>
        Sample college list with score ranges, full search and fit scoring coming soon.
      </p>
      <div className={styles.filters}>
        <input
          className={styles.input}
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Search by name or state…"
        />
        <input
          className={styles.input}
          type="number"
          value={minScore}
          onChange={(e) => setMinScore(e.target.value)}
          placeholder="Min SAT (25th %ile)"
        />
      </div>
      <ul className={styles.list}>
        {results.map((c) => (
          <li key={c.name} className={styles.row}>
            <div>
              <p className={styles.name}>{c.name}</p>
              <p className={styles.loc}>{c.location}</p>
            </div>
            <div className={styles.scores}>
              <span>SAT {c.sat}</span>
              <span>ACT {c.act}</span>
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
}
