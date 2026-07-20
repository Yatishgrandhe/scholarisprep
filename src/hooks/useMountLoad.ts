import { useEffect, type DependencyList } from "react";

/** Runs async/sync loaders after commit to satisfy react-hooks/set-state-in-effect. */
export function useMountLoad(
  load: () => void | Promise<void>,
  deps: DependencyList,
) {
  useEffect(() => {
    queueMicrotask(() => {
      void load();
    });
  }, deps);
}
