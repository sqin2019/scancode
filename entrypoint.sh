#!/bin/bash

mkdir -p /github/workspace/artifacts

cd /scancode-toolkit
./scancode \
	-clipeu \
	--license --license-policy --license-text \
	--classify \
	--summary \
	--verbose /github/workspace/$1 \
	--processes `expr $(nproc --all) - 1` \
	--json /github/workspace/artifacts/scancode.json \
	--html /github/workspace/artifacts/scancode.html


python /license_check.py -c /github/workspace/license_config.yml -s /github/workspace/artifacts/scancode.json  -f /github/workspace/$1 -o /github/workspace/artifacts/report.txt
