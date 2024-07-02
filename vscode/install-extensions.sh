#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cat $SCRIPT_DIR/'extensions.txt' | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done