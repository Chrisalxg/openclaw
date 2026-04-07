#!/bin/sh
openclaw config set gateway.bind lan || true
openclaw config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true || true
exec openclaw gateway --allow-unconfigured
