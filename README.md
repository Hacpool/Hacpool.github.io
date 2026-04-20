# Hacash Solo Pool Miner GitHub Page

This folder is a clean GitHub Pages package for the public miner page.

What is included:

- simple public landing page
- versioned miner download links
- short mining guide
- release metadata

## Dashboard

- https://hacpool.org/

## Setup

- Download the miner.

- Install Dependencies

apt-get update
apt-get install -y ca-certificates libssl3 ocl-icd-libopencl1

- Run commands
- 
For Single Gpu => ./poolworker --wallet YOUR_WALLET --worker Worker_Name --gpus 0

Rig Example    => ./poolworker --wallet YOUR_WALLET --worker Worker_Name --gpus 0,1,2,3

## Files

- `index.html`
- `styles.css`
- `404.html`
- `releases.json`
- `downloads/`

## Downloads published in this package

- `hacash-solo-pool-miner-v1.0.0.zip`
- `poolworker-v1.0.0-linux-amd64`

## Publishing on GitHub Pages

1. Create or use a GitHub Pages repository.
2. Upload the contents of this folder to the repository root.
3. Enable GitHub Pages from the `main` branch root.
4. Verify that the download links under `downloads/` resolve correctly.

## Notes

- This page is public-facing and miner-only.

