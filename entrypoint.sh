#!/bin/sh -l

mkdir /github/workspace/artifacts

cd /scancode-toolkit

./scancode /github/workspace/$1 \
	--json /github/workspace/artifacts/scancode.json \
	--csv /github/workspace/artifacts/scancode.csv \
  $2

pwd .
ls /github/workflow -al

echo "json=artifacts/scancode.json" >> $GITHUB_OUTPUT
echo "csv=artifacts/scancode.csv" >> $GITHUB_OUTPUT

# python /license_check.py -c /github/workspace/license_config.yml -s /github/workspace/artifacts/scancode.json  -f /github/workspace/$1 -o /github/workspace/artifacts/report.txt
