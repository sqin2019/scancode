#!/bin/sh -l

cd /scancode-toolkit

./scancode /github/workflow/$1 \
	--json /github/workflow/scancode.json \
	--csv /github/workflow/scancode.csv \
  $2

pwd .
ls -al

echo "json=scancode.json" >> $GITHUB_OUTPUT
echo "csv=scancode.csv" >> $GITHUB_OUTPUT

# python /license_check.py -c /github/workspace/license_config.yml -s /github/workspace/artifacts/scancode.json  -f /github/workspace/$1 -o /github/workspace/artifacts/report.txt
