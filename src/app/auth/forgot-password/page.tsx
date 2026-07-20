import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import { AuthThemeBar } from "@/components/auth/AuthThemeBar";
import { ForgotPasswordForm } from "@/components/auth/ForgotPasswordForm";
import splitStyles from "@/components/auth/auth-split.module.css";

export const metadata = {
  title: "Reset password",
};

export default function ForgotPasswordPage() {
  return (
    <div className={`landing ${splitStyles.centeredPage}`}>
      <AuthThemeBar />
      <div className={splitStyles.centeredInner}>
        <BrandHomeLink className={splitStyles.centeredLogo} size="lg" />
        <h1 className={splitStyles.centeredTitle}>Reset your password</h1>
        <p className={splitStyles.centeredSubtitle}>
          Enter your email and we&apos;ll send a reset link. No spam — just a
          way back in.
        </p>
        <ForgotPasswordForm />
      </div>
    </div>
  );
}
