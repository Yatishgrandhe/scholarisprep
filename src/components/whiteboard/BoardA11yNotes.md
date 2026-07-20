# Whiteboard Studio — ARIA labels & a11y notes

Canonical strings and patterns for `/dashboard/whiteboard`.  
**Implement via** `boardA11y.ts` helpers — do not hard-code divergent labels in siblings.

---

## Surfaces

| Surface | `aria-label` / role | Helper |
| --- | --- | --- |
| Studio root | `Whiteboard Studio` | `BOARD_ARIA.studio` |
| Canvas | `role="img"` · `Drawing board` | `canvasA11yProps()` |
| Floating tools | `role="toolbar"` · `Whiteboard tools` | `toolbarA11yProps()` |
| Draw group | `role="group"` · `Draw tools` | `toolGroupA11yProps("drawTools")` |
| Ink group | `role="group"` · `Ink color` | `toolGroupA11yProps("inkColor")` |
| Width group | `role="group"` · `Stroke width` | `toolGroupA11yProps("strokeWidth")` |
| History group | `role="group"` · `History` | `toolGroupA11yProps("history")` |
| OCR strip | `Handwriting recognition` | `BOARD_ARIA.ocrStrip` |
| OCR textarea | `OCR text` | `BOARD_ARIA.ocrText` |
| Chat dock | `Scho chat` | `BOARD_ARIA.chatDock` |
| Chat messages | live `log` · `Chat messages` | `chatLogLiveRegionProps()` |
| Chat composer | `Message Scho` | `BOARD_ARIA.chatComposer` |
| Voice controls | `Voice controls` | `BOARD_ARIA.voiceControls` |

---

## Tool button labels

Use `toolButtonLabel(action)` (and variants) for icon-only controls:

| Action | Label |
| --- | --- |
| `pen` | Pen |
| `eraser` | Eraser |
| `undo` | Undo |
| `clear` | Clear board |
| `readHandwriting` | Read handwriting |
| `askScho` | Ask Scho |
| `mic` / `stopMic` | Start / Stop voice input |
| `playTts` / `stopTts` | Play reply aloud / Stop playback |
| `collapseTools` / `expandTools` | Collapse / Show drawing tools |
| `back` | Back to Free Studying |
| `sendChat` | Send message |

**Color swatches:** `colorSwatchLabel("Cobalt", { selected })` → `Cobalt` or `Cobalt, selected`.  
**Stroke widths:** `strokeWidthLabel("Thin", { selected })` → `Thin stroke` / `Thin stroke, selected`.  
**Peek when collapsed:** `toolsPeekLabel({ open, tool, colorName })`.

Also set `aria-pressed` on toggle tools (pen/eraser, color, width). Mark Phosphor icons `aria-hidden`.

---

## Live regions

| Event | Politeness | Helper |
| --- | --- | --- |
| OCR / model progress | polite `status` | `ocrLiveRegionProps()` |
| OCR / tutor / board errors | assertive `alert` | `errorLiveRegionProps()` |
| Chat message stream | polite `log` | `chatLogLiveRegionProps()` |
| Generic status (tool change, TTS ready) | polite `status` | `liveRegionProps("polite")` |

Keep live region nodes mounted; update text content so AT announces changes. Prefer one region per concern (OCR vs chat vs errors).

---

## Focus & keyboard

- No `tabIndex` > 0.
- When the tool cluster is collapsed (`aria-hidden="true"`), set child controls `tabIndex={-1}`.
- Peek / expand control stays in tab order and reflects `aria-expanded`.
- Hotkeys (pen/eraser/undo/…) are documented in `useBoardHotkeys.ts`; do not steal focus from chat inputs.

---

## Checklist (must ship)

1. **Tool labels** — every icon-only control uses `toolButtonLabel` / swatch / width helpers.  
2. **Toolbar landmark** — `toolbarA11yProps` + group helpers.  
3. **Live OCR** — polite region for progress.  
4. **Live errors** — assertive alert on failure.  
5. **Live chat** — polite log for streaming replies.  
6. **Canvas name** — `canvasA11yProps`.  
7. **Decorative hidden** — glyphs, width dots, grain overlays `aria-hidden`.  
8. **Collapsed focus** — hidden cluster not tabbable.

Machine-readable copy: `BOARD_A11Y_CHECKLIST` in `boardA11y.ts`.
