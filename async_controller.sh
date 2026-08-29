#!/usr/bin/env bash
set -euo pipefail

run_session() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 22 ) % 997))
  done
  echo "$result"
}

run_session 22 22
