#!/usr/bin/env bash
set -euo pipefail

apt-get update
apt-get install -y ca-certificates curl libssl3 ocl-icd-libopencl1
