#!/bin/bash

# Start the HTTP server with the specified configuration
LIGHTTPD_CONF="server.conf"
LIGHTTPD_CMD="lighttpd -f $LIGHTTPD_CONF"

# Check if the configuration file exists
if [ -f "$LIGHTTPD_CONF" ]; then
    # Start the server
    echo " Starting lighttpd with configuration: $LIGHTTPD_CONF"
    $LIGHTTPD_CMD
else
    echo "Error: Configuration file '$LIGHTTPD_CONF' not found"
    exit 1
fi