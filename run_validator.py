import sys, json

isa_json_file = sys.argv[1]
try:
    from isatools import isajson
except ImportError as e:
    raise RuntimeError("Could not import isatools package")
with open(isa_json_file) as in_fp:
    json_report = isajson.validate(in_fp)
    if json_report is not None:
        with open('report.json', 'w') as out_fp:
           json.dump(json_report, out_fp)
