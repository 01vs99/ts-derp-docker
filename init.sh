#!/usr/bin/env sh

# Start Tailscale
if [ "$TS_RUN_TAILSCALE" = true ] ; then
    /usr/local/bin/containerboot &
fi

# Start the derp server
 $TS_DERP_HOSTNAME  --a=$TS_DERP_LISTEN_PORT --stun-port=$TS_DERP_STUN_PORT --verify-clients=$TS_DERP_VERIFY_CLIENTS 