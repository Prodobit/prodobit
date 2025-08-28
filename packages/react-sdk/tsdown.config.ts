import { defineConfig } from 'tsdown'

export default defineConfig({
  entry: ['src/index.ts'],
  format: ['esm'],
  sourcemap: true,
  clean: true,
  target: 'es2022',
  minify: false,
  external: ['react'],
  dts: false, // tsc ile ayrı build yapacağız
})