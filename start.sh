#!/bin/sh
node openclaw.mjs config set gateway.bind lan
node openclaw.mjs config set gateway.port 8082
node openclaw.mjs config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true
exec node openclaw.mjs gateway --allow-unconfigured
