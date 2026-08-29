#!/usr/bin/env bash
set -euo pipefail

parse_adapter() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 35 ) % 997))
  done
  echo "$total"
}

parse_adapter 35 35
