#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "==> Applying patch and creating a commit"
git apply --whitespace=fix "${SCRIPT_DIR}/demo.patch"
git commit -am "reset repo to introduce vulns for demo"
