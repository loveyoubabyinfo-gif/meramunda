#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${REPO_URL:-https://github.com/openclaw/openclaw.git}"
TARGET_DIR="${TARGET_DIR:-openclaw}"
BRANCH="${BRANCH:-master}"

if [[ -d "$TARGET_DIR/.git" ]]; then
  echo "[info] Existing repository found in '$TARGET_DIR'. Pulling latest changes..."
  git -C "$TARGET_DIR" fetch --all --prune
  git -C "$TARGET_DIR" checkout "$BRANCH"
  git -C "$TARGET_DIR" pull --ff-only origin "$BRANCH"
else
  echo "[info] Cloning OpenClaw from $REPO_URL into '$TARGET_DIR'..."
  git clone "$REPO_URL" "$TARGET_DIR"
  git -C "$TARGET_DIR" checkout "$BRANCH"
fi

echo "[info] Source ready at: $TARGET_DIR"
echo "[next] Follow upstream build/deploy docs from: $REPO_URL"
