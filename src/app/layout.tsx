import type { Metadata } from "next";
import { Geist } from "next/font/google";
import "@mdxeditor/editor/style.css";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: {
    default: "ALX Data Portfolio Hub",
    template: "%s | ALX Data Portfolio Hub",
  },
  description:
    "Real-world portfolio projects for ALX Data learners who want to build work worth showing.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className={geistSans.variable}>{children}</body>
    </html>
  );
}
