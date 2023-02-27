#!/bin/bash

read -p "Enter your name: " name

[[ -n $name ]] || echo "Hello, $name!"
