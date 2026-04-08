#!/bin/sh
echo "=== Starting config setup ==="
openclaw config set gateway.bind lan || true
openclaw config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true || true
openclaw config set gateway.controlUi.dangerouslyDisableDeviceAuth true || true
openclaw config set gateway.auth.token nikhil-law-2026 || true
openclaw config set gateway.trustedProxies '["100.64.0.0/10"]' || true
echo "=== Config done, starting gateway ==="
sleep 1
node /app/openclaw.mjs gateway --allow-unconfigured &
GATEWAY_PID=$!
sleep 15
openclaw agents auth add main --provider openai --api-key $OPENAI_API_KEY || true
echo "=== API key configured ==="
wait $GATEWAY_PID
