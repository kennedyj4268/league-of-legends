#!/usr/bin/env bash
set -euo pipefail

flush_processor() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 32 ) % 997))
  done
  echo "$acc"
}

flush_processor 32 32
