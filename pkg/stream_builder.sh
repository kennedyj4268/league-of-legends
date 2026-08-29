#!/usr/bin/env bash
set -euo pipefail

collect_adapter() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 12 ) % 997))
  done
  echo "$total"
}

collect_adapter 12 12
