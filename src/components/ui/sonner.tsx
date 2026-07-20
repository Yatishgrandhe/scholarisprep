"use client"

import { useTheme } from "next-themes"
import { Toaster as Sonner, type ToasterProps } from "sonner"
import { CircleCheckIcon, InfoIcon, TriangleAlertIcon, OctagonXIcon, Loader2Icon } from "lucide-react"

const Toaster = ({ ...props }: ToasterProps) => {
  const { theme = "system" } = useTheme()

  return (
    <Sonner
      theme={theme as ToasterProps["theme"]}
      className="toaster group"
      icons={{
        success: (
          <CircleCheckIcon className="size-4" />
        ),
        info: (
          <InfoIcon className="size-4" />
        ),
        warning: (
          <TriangleAlertIcon className="size-4" />
        ),
        error: (
          <OctagonXIcon className="size-4" />
        ),
        loading: (
          <Loader2Icon className="size-4 animate-spin" />
        ),
      }}
      style={
        {
          "--normal-bg": "hsl(var(--popover))",
          "--normal-text": "hsl(var(--popover-foreground))",
          "--normal-border": "hsl(var(--border))",
          "--border-radius": "var(--radius)",
          "--success-bg": "hsl(var(--popover))",
          "--success-text": "hsl(var(--foreground))",
          "--success-border": "hsl(var(--border))",
          "--error-bg": "hsl(var(--popover))",
          "--error-text": "hsl(var(--foreground))",
          "--error-border": "hsl(var(--border))",
          "--warning-bg": "hsl(var(--popover))",
          "--warning-text": "hsl(var(--foreground))",
          "--warning-border": "hsl(var(--border))",
          "--info-bg": "hsl(var(--popover))",
          "--info-text": "hsl(var(--foreground))",
          "--info-border": "hsl(var(--border))",
        } as React.CSSProperties
      }
      toastOptions={{
        classNames: {
          toast:
            "group toast !bg-popover !text-popover-foreground !border-border shadow-lg",
          description: "group-[.toast]:!text-muted-foreground",
          actionButton:
            "group-[.toast]:!bg-primary group-[.toast]:!text-primary-foreground",
          cancelButton:
            "group-[.toast]:!bg-muted group-[.toast]:!text-muted-foreground",
          closeButton:
            "group-[.toast]:!bg-muted group-[.toast]:!text-muted-foreground group-[.toast]:!border-border",
        },
      }}
      {...props}
    />
  )
}

export { Toaster }
