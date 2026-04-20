# Hacash Solo Pool Miner GitHub Page

This folder is a clean GitHub Pages package for the public miner page.

What is included:

- simple public landing page
- versioned miner download links
- short mining guide
- release metadata

What is intentionally not included:

- source code
- pool server binaries
- internal deployment notes
- operational secrets

## Current public miner version

- `v1.0.0`

## Future versioning

Future public miner updates should continue with incremental versions:

- `v1.0.1`
- `v1.0.2`
- `v1.0.3`

Keep file names, download links and release metadata aligned with each new version.

## Files

- `index.html`
- `styles.css`
- `404.html`
- `releases.json`
- `downloads/`

## Downloads published in this package

- `hacash-solo-pool-miner-v1.0.0.zip`
- `poolworker-v1.0.0-linux-amd64`
- `install_deps_ubuntu.sh`
- `start_miner.sh`
- `start_miner_single.sh`

## Publishing on GitHub Pages

1. Create or use a GitHub Pages repository.
2. Upload the contents of this folder to the repository root.
3. Enable GitHub Pages from the `main` branch root.
4. Verify that the download links under `downloads/` resolve correctly.

## Notes

- This page is public-facing and miner-only.
- Do not add source code or pool server files here.
- Update `releases.json` whenever a new miner version is published.
