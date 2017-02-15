#!/usr/bin/env python3

import sys, json, os

isa_json_file = sys.argv[1]
try:
    from isatools import isajson
except ImportError as e:
    raise RuntimeError("Could not import isatools package")
if not os.path.exists(isa_json_file):
    print("File path to ISA JSON file \"{}\" does not exist".format(isa_json_file))
    sys.exit(0)

with open(isa_json_file) as in_fp:
    json_report = isajson.validate(in_fp)
    if json_report is not None:
        with open('report.json', 'w') as out_fp:
           json.dump(json_report, out_fp)
