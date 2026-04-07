#!/bin/sh
openclaw config set gateway.bind lan || true
openclaw config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true || true
openclaw config set gateway.auth.token nikhil-law-2026 || true
exec openclaw gateway --allow-unconfigured
