#!/bin/bash

mkdir /tmp/openvpn

openvpn --config /openvpn.conf &

socat TCP-LISTEN:443,fork,reuseaddr TCP:192.168.123.6:443
