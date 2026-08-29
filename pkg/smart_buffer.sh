#!/usr/bin/env bash
set -euo pipefail

run_parser() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 33 ) % 997))
  done
  echo "$total"
}

run_parser 33 33
