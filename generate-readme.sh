#!/bin/bash
set -e -u -o pipefail

{ 
  cat README.base.md
  git submodule status | awk '{ print $2 }' | xargs -i cat {}/README.md 
} | head -n-1 > README.md
