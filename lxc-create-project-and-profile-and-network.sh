#!/usr/bin/env bash

# Create projects
lxc project create kubeadm-test
lxc project switch kubeadm-test

# Create profiles
lxc profile create kube-master
lxc profile create kube-node1
lxc profile create kube-node2

# Create networks
lxc network create kube-net
