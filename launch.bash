#!/bin/bash

[[ -z "$electrangular_dir" && -n "$1" ]] && electrangular_dir=$1
echo "\$1 is $1"
echo "\$electrangular_dir is $electrangular_dir"
echo "repo root to use: ""$1"
cd "$electrangular_dir" || {
		echo "couldn't get to $electrangular_dir."
		exit
}
cd app
echo "now in $PWD."
electron .
ng build --watch
