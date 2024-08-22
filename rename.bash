#!/bin/bash
set -euxo pipefail

git ls-files './' | grep -o '^.*/' | sort | uniq | xargs -i -- mkdir -p vm/{}
git ls-files | xargs -i git mv '{}' vm/'{}'
