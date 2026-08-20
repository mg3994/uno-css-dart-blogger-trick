import { defineConfig, presetWind3, type UserConfig } from "unocss";

export const sharedContent = [
  "lib/plus_trick.dart",
  "lib/shared/**/*.{dart,html,xml}",
];

export const sharedConfig: UserConfig = {
  theme: {
    // M.G
    animation: {
      keyframes: {
        custom:
          "{0%, 100% { transform: scale(0.5); } 50% { transform: scale(1); }}",
      },
      durations: {
        custom: "1s",
      },
      timingFns: {
        custom: "cubic-bezier(0.4,0,.6,1)",
      },
      properties: {
        custom: { "transform-origin": "center" },
      },
      counts: {
        custom: "infinite",
      },
    },
  },

  content: {
    filesystem: sharedContent,
  },

  presets: [
    presetWind3({
      preflight: false, // Disables the heavy block of --un-* preflight variables

      dark: "media", // M.G
    }),
  ],
  rules: [
    [/^m-([\.\d]+)$/, ([_, num]) => ({ margin: `${num}px` })],
    [/^p-([.\d]+)$/, ([_, num]) => ({ padding: `${num}px` })],
  ],
  safelist: ["m-1"],
};

export default defineConfig(sharedConfig);
