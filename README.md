# Introduction

This repo contains a proof of concept for accessing an on premise clusters API from a cloud hosted cluster using a VPN.

# Instructions
These steps must be carried out from a host with access to both clusters.

1. Edit `config.yml` and adjust the `OnPremKubeConfig` and `CloudKubeConfig` vars appropriately.
1. Run ansible-playbook deploy.yml
1. When setting up MTC use https://proxied-cluster.openvpn.svc.cluster.local:443 as the API address
