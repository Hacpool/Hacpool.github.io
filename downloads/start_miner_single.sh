#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

WALLET="${1:-}"
WORKER="${2:-$(hostname)}"
GPU_ID="${3:-0}"
POOL="${POOL:-157.173.101.86:7101}"

if [[ -z "$WALLET" ]]; then
  echo "Kullanim: ./start_miner_single.sh HACASH_WALLET [WORKER_ADI] [GPU_ID]"
  exit 1
fi

exec "$DIR/poolworker" \
  --pool "$POOL" \
  --wallet "$WALLET" \
  --worker "$WORKER" \
  --gpus "$GPU_ID"
