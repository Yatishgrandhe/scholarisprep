import { redirect } from "next/navigation";

// The standalone practice hub has been removed. Its modes now live in the
// sidebar directly — Question Bank, Speed Drill, Challenge Questions and the
// Exam Simulator — so this route forwards to the Question Bank.
export default function PracticeHubRedirect() {
  redirect("/dashboard/practice/bank");
}
