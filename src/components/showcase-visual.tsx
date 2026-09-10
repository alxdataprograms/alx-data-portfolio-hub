type ShowcaseVisualProps = {
  variant: "health" | "retail" | "commerce";
  compact?: boolean;
};

export function ShowcaseVisual({ variant, compact = false }: ShowcaseVisualProps) {
  return (
    <div className={`showcase-visual showcase-visual--${variant}${compact ? " showcase-visual--compact" : ""}`} aria-hidden="true">
      <div className="showcase-visual__chrome">
        <span /><span /><span />
        <b>{variant === "health" ? "Service coverage" : variant === "retail" ? "Regional performance" : "Customer behaviour"}</b>
      </div>
      <div className="showcase-visual__canvas">
        <div className="showcase-visual__summary">
          <span>Overview</span><span>Trends</span><span>Detail</span>
        </div>
        <div className="showcase-visual__chart">
          <div className="showcase-visual__bars">
            <i /><i /><i /><i /><i /><i />
          </div>
          <div className="showcase-visual__line"><span /><span /><span /><span /><span /></div>
        </div>
        <div className="showcase-visual__table">
          <span /><span /><span /><span />
        </div>
      </div>
    </div>
  );
}
