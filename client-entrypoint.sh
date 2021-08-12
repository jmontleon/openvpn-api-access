#!/bin/bash

openvpn --config /openvpn.conf &

socat TCP-LISTEN:443,fork,reuseaddr TCP:172.30.0.1:443
