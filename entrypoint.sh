#!/bin/sh -l

cd /scancode-toolkit

./scancode /github/workspace/$1 \
	--json /github/workspace/scancode.json \
	--csv /github/workspace/scancode.csv \
	--license --package --copyright --license-score=70

echo "json=scancode.json" >> $GITHUB_OUTPUT
echo "csv=scancode.csv" >> $GITHUB_OUTPUT
