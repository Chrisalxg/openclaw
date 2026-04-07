#!/bin/sh
echo "=== Starting config setup ==="
openclaw config set gateway.bind lan || true
openclaw config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true || true
openclaw config set gateway.auth.token nikhil-law-2026 || true
echo "=== Config done, starting gateway ==="
sleep 1
node /app/openclaw.mjs gateway --allow-unconfigured
