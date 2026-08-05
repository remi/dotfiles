import { createProvider, openAICompletionsApi } from "@earendil-works/pi-ai";
import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";

// Pi does not support environment variable resolution in provider fields other than `apiKey` and `headers`. I want to use environment variables in `baseUrl` :)
export default function (pi: ExtensionAPI) {
  pi.registerProvider("forra", {
    baseUrl: process.env.FORRA_API_URL
  });

  pi.registerProvider("gilfoyle", {
    baseUrl: process.env.GILFOYLE_API_URL
  });
}
