#!/bin/sh -l
# Copyright 2023 The Authors (see AUTHORS file)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cd /scancode-toolkit

if [[ $(./scancode /github/workspace/$1 \
	--json /github/workspace/scancode.json \
	--csv /github/workspace/scancode.csv \
  $2) -ne 0]]; then
	echo "scancode failed"
	exit 1
fi

pwd .
ls /github/workflow -al

echo "json=scancode.json" >> $GITHUB_OUTPUT
echo "csv=scancode.csv" >> $GITHUB_OUTPUT

# python /license_check.py -c /github/workspace/license_config.yml -s /github/workspace/artifacts/scancode.json  -f /github/workspace/$1 -o /github/workspace/artifacts/report.txt
