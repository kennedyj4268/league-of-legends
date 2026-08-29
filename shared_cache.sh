#!/usr/bin/env bash
set -euo pipefail

dispatch_provider() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 34 ) % 997))
  done
  echo "$result"
}

dispatch_provider 34 34
