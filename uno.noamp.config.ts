import { defineConfig, type UserConfig } from "unocss";
import { sharedConfig, sharedContent } from "./uno.config";

const noampConfig: UserConfig = {
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
      getCSS: () => `:root.Js {
         --black-500: <b:eval expr='data:vars.status_dark != &quot;transparent&quot; ? data:vars.status_dark : &quot;#000000&quot;'/>
        }\n/*<![CDATA[*/`,
    },

    {
      layer: "cdataEnd",
      getCSS: () => `\n/*]]>*/`,
    },
  ],
  content: {
    filesystem: [...sharedContent, "lib/noamp/**/*.{dart,html,xml}"],
  },
  rules: [...(sharedConfig.rules ?? []), ["noamp-layout", { display: "grid" }]],
  safelist: [...(sharedConfig.safelist ?? []), "noamp-layout"],
};

export default defineConfig(noampConfig);
