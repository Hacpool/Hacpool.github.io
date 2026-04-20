#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

WALLET="${1:-}"
WORKER="${2:-$(hostname)}"
POOL="${POOL:-157.173.101.86:7101}"

if [[ -z "$WALLET" ]]; then
  echo "Kullanim: ./start_miner.sh HACASH_WALLET [WORKER_ADI]"
  exit 1
fi

if ! command -v nvidia-smi >/dev/null 2>&1; then
  echo "nvidia-smi bulunamadi. NVIDIA surucusunu kontrol edin."
  exit 1
fi

GPU_LIST="$(
  nvidia-smi --query-gpu=index --format=csv,noheader \
    | awk '{print $1}' \
    | paste -sd, -
)"

if [[ -z "$GPU_LIST" ]]; then
  echo "NVIDIA GPU bulunamadi."
  exit 1
fi

exec "$DIR/poolworker" \
  --pool "$POOL" \
  --wallet "$WALLET" \
  --worker "$WORKER" \
  --gpus "$GPU_LIST"
