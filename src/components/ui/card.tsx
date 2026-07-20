import * as React from "react"

import { cn } from "@/lib/utils"

const accentClasses: Record<string, string> = {
  cobalt: "border-primary/40",
  aqua: "border-accent/45",
  sat: "border-[hsl(var(--exam-sat)/0.45)]",
  act: "border-[hsl(var(--exam-act)/0.45)]",
  jamb: "border-[hsl(var(--exam-jamb)/0.45)]",
  none: "",
};

function Card({
  className,
  size = "default",
  accent,
  marketing,
  ...props
}: React.ComponentProps<"div"> & {
  size?: "default" | "sm";
  accent?: string;
  marketing?: boolean;
}) {
  return (
    <div
      data-slot="card"
      data-size={size}
      className={cn(
        marketing
          ? "group/card flex min-w-0 flex-col gap-4 overflow-hidden rounded-2xl border border-border bg-card/95 p-7 text-sm text-card-foreground shadow-[var(--shadow-sm)] transition-[border-color,box-shadow] duration-200 hover:border-border hover:shadow-[var(--shadow-md)] has-data-[slot=card-footer]:pb-0 has-[>img:first-child]:pt-0 data-[size=sm]:gap-3 data-[size=sm]:p-5 data-[size=sm]:has-data-[slot=card-footer]:pb-0 *:[img:first-child]:rounded-t-xl *:[img:last-child]:rounded-b-xl"
          : "group/card flex min-w-0 flex-col gap-5 overflow-hidden rounded-2xl border border-[hsl(var(--border))] bg-[hsl(var(--card))] p-6 text-sm text-card-foreground shadow-[var(--shadow-sm)] transition-[border-color,box-shadow] duration-200 hover:border-[hsl(var(--border))] hover:shadow-[var(--shadow-md)] has-data-[slot=card-footer]:pb-0 has-[>img:first-child]:pt-0 data-[size=sm]:gap-3 data-[size=sm]:p-5 data-[size=sm]:has-data-[slot=card-footer]:pb-0 *:[img:first-child]:rounded-t-xl *:[img:last-child]:rounded-b-xl",
        !marketing && accent ? (accentClasses[accent] ?? "") : "",
        className
      )}
      {...props}
    />
  )
}

function CardHeader({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="card-header"
      className={cn(
        "group/card-header @container/card-header grid auto-rows-min items-start gap-1 rounded-t-xl px-4 group-data-[size=sm]/card:px-3 has-data-[slot=card-action]:grid-cols-[1fr_auto] has-data-[slot=card-description]:grid-rows-[auto_auto] [.border-b]:pb-4 group-data-[size=sm]/card:[.border-b]:pb-3",
        className
      )}
      {...props}
    />
  )
}

function CardTitle({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="card-title"
      className={cn(
        "font-heading text-base leading-snug font-medium group-data-[size=sm]/card:text-sm",
        className
      )}
      {...props}
    />
  )
}

function CardDescription({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="card-description"
      className={cn("text-sm text-muted-foreground", className)}
      {...props}
    />
  )
}

function CardAction({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="card-action"
      className={cn(
        "col-start-2 row-span-2 row-start-1 self-start justify-self-end",
        className
      )}
      {...props}
    />
  )
}

function CardContent({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="card-content"
      className={cn("px-4 group-data-[size=sm]/card:px-3", className)}
      {...props}
    />
  )
}

function CardFooter({ className, ...props }: React.ComponentProps<"div">) {
  return (
    <div
      data-slot="card-footer"
      className={cn(
        "flex items-center rounded-b-xl border-t bg-muted/50 p-4 group-data-[size=sm]/card:p-3",
        className
      )}
      {...props}
    />
  )
}

export {
  Card,
  CardHeader,
  CardFooter,
  CardTitle,
  CardAction,
  CardDescription,
  CardContent,
}
