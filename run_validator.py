import sys

isa_json_file = sys.argv[1]
try:
    from isatools import isajson
except ImportError as e:
    raise RuntimeError("Could not import isatools package")
log_msg_stream = isajson.validate(open(isa_json_file))
if log_msg_stream is not None:
    with open('log.txt', 'w') as f:
        f.write(log_msg_stream.getvalue())
