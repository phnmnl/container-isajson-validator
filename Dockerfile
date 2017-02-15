FROM ubuntu:16.04

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software.version="0.5.0"
LABEL version="0.1"
LABEL software="ISA-JSON Validator"

RUN apt-get update
RUN apt-get install -y -no-install-recommends python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -U setuptools
RUN pip3 install isatools==0.5.0
RUN apt-get -y clean && apt-get -y autoremove

ADD run_test.sh /usr/local/bin/run_test.sh
RUN chmod +x /usr/local/bin/run_test.sh

ADD run_validator.py /
ENTRYPOINT ["python3", "run_validator.py"]
