# fifthrooter.github.io

Personal site for [FifthRooter](https://github.com/FifthRooter), published at <https://fifthrooter.github.io/>.

Built with [Astro](https://astro.build/) using the [astro-micro](https://github.com/trevortylerlee/astro-micro) theme.

## Local development

```sh
npm install
npm run dev       # http://localhost:4321
npm run build     # production build → ./dist
npm run preview   # preview the production build locally
```

The repo can also be opened as a vault in [Obsidian](https://obsidian.md/) (File → Open vault → Open folder as vault → pick this directory) — `node_modules/`, `dist/` and `.astro/` are gitignored, so they won't pollute the graph.

## Project layout

```
src/
├── components/        # Astro components (Gallery, YouTubeEmbed, etc.)
├── content/
│   ├── blog/          # Blog posts (one folder per post)
│   └── projects/      # Long-form project pages (one folder per project)
├── layouts/
├── pages/             # Static pages (about, bikes, now, etc.)
└── styles/
```

## Deploy

Push to `main` → GitHub Actions builds with `npm run build` and deploys to GitHub Pages via `.github/workflows/deploy.yml`.