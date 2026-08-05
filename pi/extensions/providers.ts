import { createProvider, openAICompletionsApi } from "@earendil-works/pi-ai";
import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";

export default function (pi: ExtensionAPI) {
  pi.registerProvider("forra", {
    baseUrl: process.env.FORRA_API_URL
  });

  pi.registerProvider("gilfoyle", {
    baseUrl: process.env.GILFOYLE_API_URL
  });
}
