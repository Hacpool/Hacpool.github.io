# Hacash Solo Pool Miner GitHub Page

This folder is a clean GitHub Pages package for the public miner page.

## Package Contents

- simple public landing page
- versioned miner download links
- short mining guide
- release metadata

## Control Panel

[https://hacpool.org/](https://hacpool.org/)

## Setup

1. Download the miner package.
2. Install the required dependencies.
3. Run the miner with your wallet and worker name.

## Required Dependencies

Run these commands on Ubuntu:

```bash
apt-get update
apt-get install -y ca-certificates libssl3 ocl-icd-libopencl1
```

## Run Commands

### Single GPU

```bash
./poolworker --wallet YOUR_WALLET --worker Worker_Name --gpus 0
```

### Multiple GPUs Example

```bash
./poolworker --wallet YOUR_WALLET --worker Worker_Name --gpus 0,1,2,3
```

## Files

- `index.html`
- `styles.css`
- `404.html`
- `releases.json`
- `downloads/`

## Published Downloads In This Package

- `hacash-solo-pool-miner-v1.0.0.zip`
- `poolworker-v1.0.0-linux-amd64`

## Publishing On GitHub Pages

1. Create or use a GitHub Pages repository.
2. Upload the contents of this folder to the repository root.
3. Enable GitHub Pages from the `main` branch.
4. Verify that the download links under `downloads/` are served correctly.

## Notes

This page is public and miner-only.
