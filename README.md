# Introduction
This repo contains a playbook that sets up an OpenVPN server and client in order exposes an On Premise OpenShift Cluster API endpoint to pods on a cloud hosted OpenShift cluster.

# Purpose
The primary use case for this tool is enabling migrations from an on premise OpenShift cluster using MTC or Crane.

# Requirements
- ansible
- oc 4.x in your path.

# Instructions
These steps must be carried out from a host with access to both clusters.

1. Edit `config.yml` and adjust the `OnPremKubeConfig` and `CloudKubeConfig` vars appropriately.
1. Run ansible-playbook deploy.yml
1. It may take a few minutes for the load balancer address on the cloud instance to resolve and client connect.
1. Use https://proxied-cluster.openvpn.svc.cluster.local:443 as the API address for the remote cluster in MTC.
