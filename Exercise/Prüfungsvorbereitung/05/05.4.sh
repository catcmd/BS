#!/usr/bin/env bash

if [$# -eq 1]; then
    echo "Welcome, this is your home directory."
else
    echo "Sorry, wrong directory."
    exit 1
fi