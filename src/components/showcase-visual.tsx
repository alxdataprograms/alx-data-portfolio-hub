type ShowcaseVisualProps = {
  src: string;
  alt: string;
  compact?: boolean;
};

export function ShowcaseVisual({ src, alt, compact = false }: ShowcaseVisualProps) {
  return (
    <div className={`showcase-visual showcase-visual--image${compact ? " showcase-visual--compact" : ""}`}>
      <Image alt={alt} fill sizes={compact ? "(max-width: 760px) 100vw, 42vw" : "(max-width: 760px) 100vw, 60vw"} src={src} unoptimized />
    </div>
  );
}
import Image from "next/image";
