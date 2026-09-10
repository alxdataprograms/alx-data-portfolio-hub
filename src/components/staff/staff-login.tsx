"use client";

import { useState } from "react";
import { createClient } from "@/lib/supabase/client";

export function StaffLogin({ initialError = "" }: { initialError?: string }) {
  const [error, setError] = useState(initialError);
  const [pending, setPending] = useState(false);

  async function signIn() {
    setError("");
    setPending(true);
    const supabase = createClient();
    const { error: signInError } = await supabase.auth.signInWithOAuth({
      provider: "google",
      options: {
        redirectTo: `${window.location.origin}/auth/callback?next=/staff`,
      },
    });

    if (signInError) {
      setError(signInError.message);
      setPending(false);
    }
  }

  return (
    <main className="staff-login-page">
      <section className="staff-login-panel">
        <span className="brand__mark">ALX</span>
        <p className="staff-kicker">Staff workspace</p>
        <h1>Manage the project hub.</h1>
        <p>Sign in with your ALX Google account to create projects and review learner activity.</p>
        <button disabled={pending} onClick={signIn} type="button">
          {pending ? "Opening Google…" : "Continue with Google"}
        </button>
        <small>Access is limited to alxafrica.com accounts.</small>
        {error && <p className="form-error" role="alert">{error}</p>}
      </section>
    </main>
  );
}
