/** Route constants safe for Server Components (no icon / client imports). */

/** Primary Free Studying hub — keep in main sidebar (not More-only). */
export const FREE_STUDY_HREF = "/dashboard/free-study";
export const FREE_STUDY_NAV_ID = "free-study";

/** Full-page Whiteboard Studio — Free Studying sub-entry (not STEM Labs). */
export const WHITEBOARD_HREF = "/dashboard/whiteboard";
export const WHITEBOARD_NAV_ID = "whiteboard";

/** Dedicated STEM Labs catalog — not nested under Free Studying. */
export const LABS_HREF = "/dashboard/labs";
export const LABS_NAV_ID = "labs";

/**
 * Always open Free Studying / STEM Labs chrome entry points in a new tab.
 * Use on sidebar, mobile tabs, home CTAs, and landing cross-links — not on
 * in-hub deep links (`?dest=`, lab cards, etc.).
 */
export const PRODUCT_NEW_TAB_PROPS = {
  target: "_blank" as const,
  rel: "noopener noreferrer" as const,
};

/** @deprecated Prefer PRODUCT_NEW_TAB_PROPS */
export const NEW_TAB_LINK_PROPS = PRODUCT_NEW_TAB_PROPS;
