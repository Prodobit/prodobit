import { defineConfig } from "@pandacss/dev";
import { createPreset } from "@park-ui/panda-preset";
import green from "@park-ui/panda-preset/colors/green";
import olive from "@park-ui/panda-preset/colors/olive";

export default defineConfig({
  // Use Park UI preset as the foundation
  presets: [
    "@pandacss/preset-panda",
    createPreset({
      accentColor: green,
      grayColor: olive,
      radius: "md",
    }),
  ],

  // Framework and includes
  jsxFramework: "react",
  include: ["./src/**/*.{js,jsx,ts,tsx}"],
  exclude: [],

  // Output directory
  outdir: "styled-system",

  // Global CSS for React framework
  globalCss: {
    html: {
      fontFamily: "Jakarta, system-ui, sans-serif",
      lineHeight: "1.5",
      textRendering: "optimizeLegibility",
      MozOsxFontSmoothing: "grayscale",
      WebkitFontSmoothing: "antialiased",
      WebkitTextSizeAdjust: "100%",
    },

    body: {
      fontFamily: "inherit",
      fontWeight: "normal",
      lineHeight: "inherit",
      color: "fg.default",
      bg: "bg.canvas",
    },

    "*": {
      borderColor: "border.default",
    },
  },

  // Conditions for theme switching
  conditions: {
    extend: {
      dark: '.dark &, [data-theme="dark"] &',
      light: '.light &, [data-theme="light"] &',
    },
  },
});
