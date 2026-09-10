"use client";

import type { CSSProperties } from "react";
import { useEffect, useState } from "react";
import { ShowcaseVisual } from "@/components/showcase-visual";

type HeroShowcase = { title: string; coverImageUrl: string };

export function HeroFeature({ showcases }: { showcases: HeroShowcase[] }) {
  const [active, setActive] = useState<"brief" | "showcase">("brief");
  const [showcaseIndex, setShowcaseIndex] = useState(0);

  useEffect(() => {
    if (!showcases.length) return;
    if (window.matchMedia("(prefers-reduced-motion: reduce)").matches) return;
    const interval = window.setInterval(
      () => setActive((current) => (current === "brief" ? "showcase" : "brief")),
      7000,
    );
    return () => window.clearInterval(interval);
  }, [showcases.length]);

  useEffect(() => {
    if (
      active !== "showcase" ||
      window.matchMedia("(prefers-reduced-motion: reduce)").matches
    ) return;

    const interval = window.setInterval(
      () => setShowcaseIndex((current) => (current + 1) % showcases.length),
      3200,
    );
    return () => window.clearInterval(interval);
  }, [active, showcases.length]);

  const activeShowcase = showcases[showcaseIndex];

  return (
    <div aria-hidden="true" className="hero-feature">
      <div className="hero-feature__stage">
        {active === "brief" || !activeShowcase ? (
          <div className="brief-visual">
            <div className="brief-visual__topline"><span>Project brief</span><span>DA-2 / 01</span></div>
            <p className="brief-visual__title">From raw data to a decision someone can use.</p>
            <div className="brief-visual__plot" aria-hidden="true">
              <span style={{ "--bar-size": "72%" } as CSSProperties}>Clean</span>
              <span style={{ "--bar-size": "88%" } as CSSProperties}>Analyse</span>
              <span style={{ "--bar-size": "62%" } as CSSProperties}>Explain</span>
            </div>
            <div className="brief-visual__footer"><span>Real dataset</span><span>Portfolio-ready output</span></div>
          </div>
        ) : (
          <div className="hero-showcase-gallery">
            <ShowcaseVisual alt={activeShowcase.title} src={activeShowcase.coverImageUrl} />
          </div>
        )}
      </div>
    </div>
  );
}
