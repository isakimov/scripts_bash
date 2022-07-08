#!/bin/bash

read -p 'Enter namespace:' namespase
read -p 'Enter path:' path
for i in $(kubectl get pods -n $namespase -o name)
do
kubectl logs -n $namespase $i > $path/$(echo $i | sed 's/^.*\///').log
done
