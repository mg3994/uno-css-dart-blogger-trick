import { defineConfig, type UserConfig } from "unocss";
import { sharedConfig, sharedContent } from "./uno.config";

const ampConfig: UserConfig = {
  ...sharedConfig,
  layers: {
    ...(sharedConfig.layers ?? {}),
    cdataStart: -99,
    default: 0,
    cdataEnd: 100,
  },
  preflights: [
    ...(sharedConfig.preflights ?? []),
    {
      layer: "cdataStart",
      getCSS: () => `:root.nJS {
         --red-500: <b:eval expr='data:vars.status_dark != &quot;transparent&quot; ? data:vars.status_dark : &quot;#000000&quot;'/>
        }\n/*<![CDATA[*/`,
    },

    {
      layer: "cdataEnd",
      getCSS: () => `\n/*]]>*/`,
    },
  ],
  content: {
    filesystem: [...sharedContent, "lib/amp/**/*.{dart,html,xml}"],
  },
  rules: [...(sharedConfig.rules ?? []), ["amp-layout", { display: "block" }]],
  safelist: [...(sharedConfig.safelist ?? []), "amp-layout"],
};

export default defineConfig(ampConfig);
