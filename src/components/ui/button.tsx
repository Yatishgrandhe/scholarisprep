import { Button as ButtonPrimitive } from "@base-ui/react/button"
import { cva, type VariantProps } from "class-variance-authority"

import { cn } from "@/lib/utils"

const buttonVariants = cva(
  [
    "inline-flex items-center justify-center whitespace-nowrap",
    "font-semibold text-sm leading-none",
    "rounded-[8px]",
    "transition-all duration-150 ease-out",
    "focus-visible:outline-none focus-visible:ring-2",
    "focus-visible:ring-[hsl(var(--ring))] focus-visible:ring-offset-2",
    "disabled:pointer-events-none disabled:opacity-50",
    "select-none cursor-pointer",
    "gap-2",
  ].join(" "),
  {
    variants: {
      variant: {
        default: [
          "bg-primary text-primary-foreground",
          "border-0",
          "font-bold tracking-tight",
          "hover:opacity-90 hover:-translate-y-px",
          "hover:shadow-[0_6px_20px_hsl(var(--primary)/0.30)]",
          "active:translate-y-0 active:opacity-100",
        ].join(" "),
        secondary: [
          "bg-[hsl(var(--secondary))] text-[hsl(var(--secondary-foreground))]",
          "border border-[hsl(var(--border))]",
          "hover:bg-[hsl(var(--muted))]",
          "hover:border-[hsl(var(--border))]",
        ].join(" "),
        outline: [
          "bg-transparent text-[hsl(var(--foreground))]",
          "border-[1.5px] border-[hsl(var(--border))]",
          "hover:bg-[hsl(var(--muted))]",
          "hover:border-[hsl(var(--border))]",
        ].join(" "),
        ghost: [
          "bg-transparent text-[hsl(var(--muted-foreground))]",
          "border-0",
          "hover:bg-[hsl(var(--muted))]",
          "hover:text-[hsl(var(--foreground))]",
        ].join(" "),
        link: [
          "bg-transparent text-[hsl(var(--primary))]",
          "border-0 p-0 h-auto",
          "underline-offset-4 hover:underline",
          "font-semibold",
        ].join(" "),
        destructive: [
          "bg-[hsl(var(--destructive))] text-[hsl(var(--destructive-foreground))]",
          "border-0",
          "hover:opacity-90",
        ].join(" "),
      },
      size: {
        default: "h-10 px-6 py-0 min-w-[7.5rem]",
        xs: "h-8 px-4 py-0 gap-1.5 text-xs rounded-[6px]",
        sm: "h-9 px-5 py-0 gap-1.5 text-sm rounded-[8px]",
        lg: "h-12 px-8 py-0 gap-2 text-base rounded-[10px] min-w-[9.5rem]",
        xl: "h-14 px-10 py-0 gap-2.5 text-base rounded-[10px] min-w-[11rem]",
        icon: "h-9 w-9 p-0",
        "icon-xs": "size-8 rounded-[6px]",
        "icon-sm": "size-9",
        "icon-lg": "size-12 rounded-[10px]",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  }
)

function Button({
  className,
  variant = "default",
  size = "default",
  ...props
}: ButtonPrimitive.Props & VariantProps<typeof buttonVariants>) {
  return (
    <ButtonPrimitive
      data-slot="button"
      className={cn(buttonVariants({ variant, size, className }))}
      {...props}
    />
  )
}

export { Button, buttonVariants }
