// @ts-nocheck

import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";

// https://vitejs.dev/config/
export default defineConfig({
  base: '/icons/',
  optimizeDeps: {
    include: ['lodash', '@dataloop-ai/components']
  },
  plugins: [
    vue()
  ],
  test: {
      environment: 'jsdom',
      setupFiles: ['tests/setup.js'],
      deps: {
          inline: ['vitest-canvas-mock']
      },
      coverage: {
          reporter: ['lcovonly', 'text']
      }
  }
});
