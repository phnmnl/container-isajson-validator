#!/bin/bash

apt-get update && apt-get install -y --no-install-recommends wget
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/isa-api/master/tests/data/json/BII-I-1/BII-I-1.json
python3 run_validator.py BII-I-1.json

# check that files were created
if ! [ -e "/report.json" ]; then
	echo "Validation report file doesn't exist"
	exit 1
fi

echo "All files created successfully"
