#!/usr/bin/env bash
# Start Open vSwitch inside the container, then run the given command.
set -e
service openvswitch-switch start >/dev/null
exec "$@"
