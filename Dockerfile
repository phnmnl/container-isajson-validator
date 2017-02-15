FROM ubuntu:16.04

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software.version="0.5.0"
LABEL version="0.1"
LABEL software="isajson-validator"

RUN apt-get update && apt-get install -y --no-install-recommends python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install -U setuptools && \
    pip3 install isatools==0.5.0 && \
    apt-get -y clean && apt-get -y autoremove

ADD run_test.sh /usr/local/bin/run_test.sh
RUN chmod a+x /usr/local/bin/run_test.sh

ADD run_validator.py /
RUN chmod a+x run_validator.py

ENTRYPOINT ["python3", "run_validator.py"]
