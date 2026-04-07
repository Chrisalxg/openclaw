#!/bin/sh
set -e
node /app/openclaw.mjs config set gateway.bind lan || true
node /app/openclaw.mjs config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true || true
exec node /app/openclaw.mjs gateway --allow-unconfigured
