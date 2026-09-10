"use client";

import dynamic from "next/dynamic";

const Editor = dynamic(() => import("./project-markdown-editor-initialized"), {
  ssr: false,
  loading: () => <div className="staff-editor-loading">Loading editor…</div>,
});

type ProjectMarkdownEditorProps = {
  markdown: string;
  onChange: (markdown: string) => void;
};

export function ProjectMarkdownEditor(props: ProjectMarkdownEditorProps) {
  return <Editor {...props} />;
}
