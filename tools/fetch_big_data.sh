#!/usr/bin/env bash
set -e

SRC_DIR="$HOME/hapnest/data/outputs/test"   # adjust if needed
DST_DIR="$(git rev-parse --show-toplevel)/runs"

mkdir -p "$DST_DIR"
rsync -av --progress \
  "$SRC_DIR/genie10k_full.bed" \
  "$SRC_DIR/genie10k_full.bim" \
  "$SRC_DIR/genie10k_full.fam" \
  "$DST_DIR/"

echo "✓ PLINK binaries copied into \$DST_DIR"
