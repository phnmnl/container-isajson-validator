#!/bin/bash
wget --no-check-certificate https://raw.githubusercontent.com/ISA-tools/ISAdatasets/master/json/BII-I-1/BII-I-1.json
run_validator.py ./BII-I-1.json

# check that files were created
if ! [ -e "/report.json" ]; then
	echo "Validation report file doesn't exist"
	exit 1
fi

echo "All validation report files created successfully"
