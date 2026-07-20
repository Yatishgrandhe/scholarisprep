"use client";

import { Component, type ErrorInfo, type ReactNode } from "react";
import { ErrorFallbackView } from "@/components/shared/ErrorFallbackView";

type ErrorBoundaryProps = {
  children: ReactNode;
  homeHref?: string;
  homeLabel?: string;
};

type ErrorBoundaryState = {
  hasError: boolean;
};

export class ErrorBoundary extends Component<
  ErrorBoundaryProps,
  ErrorBoundaryState
> {
  state: ErrorBoundaryState = { hasError: false };

  static getDerivedStateFromError(): ErrorBoundaryState {
    return { hasError: true };
  }

  componentDidCatch(error: Error, errorInfo: ErrorInfo) {
    console.error("[ErrorBoundary]", error, errorInfo);
  }

  reset = () => {
    this.setState({ hasError: false });
  };

  render() {
    if (this.state.hasError) {
      return (
        <ErrorFallbackView
          onTryAgain={this.reset}
          homeHref={this.props.homeHref}
          homeLabel={this.props.homeLabel}
        />
      );
    }

    return this.props.children;
  }
}
