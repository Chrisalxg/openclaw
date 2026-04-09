#!/bin/sh
echo "=== Starting config setup ==="
openclaw config set gateway.bind lan || true
openclaw config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true || true
openclaw config set gateway.controlUi.dangerouslyDisableDeviceAuth true || true
openclaw config set gateway.auth.token nikhil-law-2026 || true
openclaw config set gateway.trustedProxies '["100.64.0.0/10"]' || true
openclaw config set agents.defaults.model openrouter/google/gemini-flash-1.5 || true
openclaw config set extensions.github-copilot.enabled false || true
echo "=== Config done, starting gateway ==="
sleep 1
exec node /app/openclaw.mjs gateway --allow-unconfigured
