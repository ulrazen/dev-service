#!/bin/bash

# Update the main repository
git pull origin main

# Update all submodules to the latest version of their main branches
git submodule update --remote --merge

# Commit the changes in the main repository
git add .
git commit -m "Update all submodules to the latest versions"
