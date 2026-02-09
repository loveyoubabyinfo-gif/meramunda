# meramunda

Quick deployment helper for OpenClaw.

## Upstream

- https://github.com/openclaw/openclaw.git

## Fast Deploy

```bash
./scripts/deploy-openclaw.sh
```

This script will:
- clone `openclaw/openclaw` (or pull latest if already cloned)
- checkout branch `master` by default

### Optional overrides

```bash
REPO_URL=https://github.com/openclaw/openclaw.git \
TARGET_DIR=/opt/openclaw \
BRANCH=master \
./scripts/deploy-openclaw.sh
```

After source sync, continue with upstream platform-specific build and runtime steps.
