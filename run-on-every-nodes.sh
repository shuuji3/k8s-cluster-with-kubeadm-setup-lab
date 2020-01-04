#!/usr/bin/env bash

echo "🌟 $@"

for i in kube-master kube-node1 kube-node2; do
    echo "[$i]"
    lxc exec $i -- "$@"
    echo
done
