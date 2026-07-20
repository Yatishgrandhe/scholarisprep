import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import { AuthThemeBar } from "@/components/auth/AuthThemeBar";
import { ResetPasswordForm } from "@/components/auth/ResetPasswordForm";
import splitStyles from "@/components/auth/auth-split.module.css";

export const metadata = {
  title: "Choose a new password",
};

export default function ResetPasswordPage() {
  return (
    <div className={`landing ${splitStyles.centeredPage}`}>
      <AuthThemeBar />
      <div className={splitStyles.centeredInner}>
        <BrandHomeLink className={splitStyles.centeredLogo} size="lg" />
        <h1 className={splitStyles.centeredTitle}>Choose a new password</h1>
        <p className={splitStyles.centeredSubtitle}>
          Pick a new password for your Scholaris account, then sign back in.
        </p>
        <ResetPasswordForm />
      </div>
    </div>
  );
}
