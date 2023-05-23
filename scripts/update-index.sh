#!/usr/bin/env bash
# Updates the 'index.yaml' in the root of the repository.
set -euo pipefail
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
REPO_DIR="$(cd "${SCRIPTS_DIR}/.." >/dev/null 2>&1 && pwd)"
if ! command -v helm @ >/dev/null; then
  echo "Error: Missing helm, please install it" >&2
  exit 1
fi

if [[ ! -e "$REPO_DIR/.git" ]]; then
  echo "Error: Failed to determine repository root (got: \"$REPO_DIR\")" >&2
  exit 1
fi

set -x
helm repo index --url https://getoutreach.github.io/helm-charts-public "$REPO_DIR"
