import {
  formatStimulusText,
  isNotesStimulus,
  isPipeTable,
  parseNotes,
  parsePipeTable,
} from "@/lib/question/formatStimulusText";
import { MathRenderer } from "./MathRenderer";
import styles from "./QuestionInterface.module.css";

type StimulusTextProps = {
  text: string;
  variant?: "plain" | "prose";
  stimulusType?: "passage" | "data_table" | "poem" | "graph_description";
};

const SVG_BLOCK_RE = /<svg[\s\S]*?<\/svg>/gi;

function isSvgMarkup(text: string): boolean {
  return /^\s*<svg[\s>]/i.test(text.trim());
}

function containsSvgMarkup(text: string): boolean {
  return /<svg[\s>]/i.test(text);
}

// Only a genuine multi-text passage (e.g. Cross-Text Connections, with an
// explicit "Text 2") should get "Text 1 / Text 2" section labels. A single
// passage that merely has several paragraphs (intro + a data table, etc.)
// must NOT be chopped into "Text 1 / Text 2 / Text 3".
function looksLikeCrossText(raw: string): boolean {
  return /(^|\n)\s*Text\s+2\b/i.test(raw) || /author of Text\s*2/i.test(raw);
}

type StimulusPart = { type: "text" | "svg"; content: string };

function splitStimulusParts(text: string): StimulusPart[] {
  const parts: StimulusPart[] = [];
  let lastIndex = 0;
  const re = new RegExp(SVG_BLOCK_RE.source, "gi");
  let match: RegExpExecArray | null;
  while ((match = re.exec(text)) !== null) {
    const before = text.slice(lastIndex, match.index).trim();
    if (before) parts.push({ type: "text", content: before });
    parts.push({ type: "svg", content: match[0] });
    lastIndex = match.index + match[0].length;
  }
  const after = text.slice(lastIndex).trim();
  if (after) parts.push({ type: "text", content: after });
  return parts;
}

function StimulusMixedContent({
  parts,
  variant,
}: {
  parts: StimulusPart[];
  variant: "plain" | "prose";
}) {
  return (
    <div className={styles.stimulusProse}>
      {parts.map((part, index) =>
        part.type === "svg" ? (
          <StimulusDiagram key={`svg-${index}`} svg={part.content} />
        ) : (
          <StimulusTextBlock key={`text-${index}`} text={part.content} variant={variant} />
        ),
      )}
    </div>
  );
}

function StimulusTextBlock({
  text,
  variant,
}: {
  text: string;
  variant: "plain" | "prose";
}) {
  if (isPipeTable(text)) {
    return <StimulusTable text={text} />;
  }

  if (variant === "plain") {
    return (
      <div className={styles.stimulusText}>
        <MathRenderer text={text} />
      </div>
    );
  }

  const paragraphs = formatStimulusText(text);
  if (paragraphs.length <= 1) {
    return <StimulusParagraph text={paragraphs[0] ?? text} />;
  }

  return (
    <>
      {paragraphs.map((paragraph, index) => (
        <section key={index} className={styles.stimulusBlock}>
          <h3 className={styles.stimulusBlockLabel}>Text {index + 1}</h3>
          <StimulusParagraph text={paragraph} />
        </section>
      ))}
    </>
  );
}

function StimulusDiagram({ svg }: { svg: string }) {
  return (
    <div
      className={styles.stimulusDiagram}
      role="img"
      aria-label="Question figure"
      dangerouslySetInnerHTML={{ __html: svg.trim() }}
    />
  );
}

function StimulusTable({ text }: { text: string }) {
  const rows = parsePipeTable(text);
  if (rows.length === 0) {
    return (
      <pre className={styles.stimulusTableFallback}>{text}</pre>
    );
  }

  const [header, ...body] = rows;
  return (
    <table className={styles.stimulusTable}>
      {header ? (
        <thead>
          <tr>
            {header.map((cell, i) => (
              <th key={i} scope="col">
                <MathRenderer text={cell} />
              </th>
            ))}
          </tr>
        </thead>
      ) : null}
      <tbody>
        {(header ? body : rows).map((row, rowIndex) => (
          <tr key={rowIndex}>
            {row.map((cell, cellIndex) => (
              <td key={cellIndex}>
                <MathRenderer text={cell} />
              </td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
}

function StimulusNotes({ items }: { items: string[] }) {
  return (
    <div className={styles.stimulusNotes}>
      <p className={styles.stimulusNotesIntro}>
        While researching a topic, a student has taken the following notes:
      </p>
      <ul className={styles.stimulusNotesList}>
        {items.map((item, index) => (
          <li key={index} className={styles.stimulusNotesItem}>
            <MathRenderer text={item} />
          </li>
        ))}
      </ul>
    </div>
  );
}

function StimulusParagraph({ text }: { text: string }) {
  return (
    <p className={styles.stimulusParagraph}>
      <MathRenderer text={text} />
    </p>
  );
}

export function StimulusText({
  text,
  variant = "plain",
  stimulusType,
}: StimulusTextProps) {
  const trimmed = text.trim();
  if (!trimmed) return null;

  if (stimulusType === "graph_description" || containsSvgMarkup(trimmed)) {
    const parts = splitStimulusParts(trimmed);
    if (parts.some((part) => part.type === "svg")) {
      return <StimulusMixedContent parts={parts} variant={variant} />;
    }
    if (isSvgMarkup(trimmed) || stimulusType === "graph_description") {
      return (
        <div className={styles.stimulusProse}>
          <StimulusDiagram svg={trimmed} />
        </div>
      );
    }
  }

  if (stimulusType === "data_table" || isPipeTable(trimmed)) {
    return (
      <div className={styles.stimulusProse}>
        <StimulusTable text={trimmed} />
      </div>
    );
  }

  if (isNotesStimulus(trimmed)) {
    return (
      <div className={styles.stimulusProse}>
        <StimulusNotes items={parseNotes(trimmed)} />
      </div>
    );
  }

  if (variant === "plain") {
    return (
      <div className={styles.stimulusText}>
        <MathRenderer text={trimmed} />
      </div>
    );
  }

  const paragraphs = formatStimulusText(trimmed);

  // Render a single block as a table when it's a pipe table, else as prose.
  const renderBlockBody = (text: string) =>
    isPipeTable(text) ? (
      <StimulusTable text={text} />
    ) : (
      <StimulusParagraph text={text} />
    );

  if (paragraphs.length <= 1) {
    return (
      <div className={styles.stimulusProse}>
        {renderBlockBody(paragraphs[0] ?? trimmed)}
      </div>
    );
  }

  const multiText = looksLikeCrossText(trimmed);
  return (
    <div className={styles.stimulusProse}>
      {paragraphs.map((paragraph, index) =>
        multiText ? (
          <section key={index} className={styles.stimulusBlock}>
            <h3 className={styles.stimulusBlockLabel}>Text {index + 1}</h3>
            {renderBlockBody(paragraph)}
          </section>
        ) : (
          <div key={index}>{renderBlockBody(paragraph)}</div>
        ),
      )}
    </div>
  );
}
