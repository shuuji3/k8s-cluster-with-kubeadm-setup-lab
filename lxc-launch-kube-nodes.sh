#!/usr/bin/env bash

for i in kube-master kube-node1 kube-node2; do
    # Apply profile
    lxc profile edit "$i" < lxc-config-profile-"$i".yaml

    # Launch nodes
    lxc launch --profile "$i" ubuntu:18.04 "$i"
done
