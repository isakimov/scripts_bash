#!/bin/bash

read -p 'Enter namespace:' namespase
read -p 'Enter path:' path
for i in $(qrunctl get pods -n $namespase -o name)
do
qrunctl logs -n $namespase $i > $path/$(echo $i | sed 's/^.*\///').log
done
