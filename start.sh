#!/bin/sh
echo "=== Starting config setup ==="
openclaw config set gateway.bind lan || true
openclaw config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true || true
openclaw config set gateway.controlUi.dangerouslyDisableDeviceAuth true || true
openclaw config set gateway.auth.token nikhil-law-2026 || true
openclaw config set gateway.trustedProxies '["100.64.0.0/10"]' || true
openclaw config set skills.disabled '["read"]' || true
echo "=== Config done, starting gateway ==="
sleep 1
exec node /app/openclaw.mjs gateway --allow-unconfigured
