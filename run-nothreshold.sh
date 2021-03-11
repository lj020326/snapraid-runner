#!/usr/bin/env bash

#python3 /opt/snapraid-runner/snapraid-runner.py -c /opt/snapraid-runner/snapraid-runner.nodeletethreshold.conf

## cron:
HC_URL=https://healthchecks.admin.johnson.int/ping/1c56e8f4-ed57-4b15-8a8e-d4009a878e6a
#CONF_PATH=/opt/snapraid-runner/snapraid-runner.conf
CONF_PATH=/opt/snapraid-runner/snapraid-runner.nodeletethreshold.conf
RUN_SCRIPT=/opt/snapraid-runner/snapraid-runner.py

python3 ${RUN_SCRIPT} -c ${CONF_PATH} && curl -fsS --retry 3 ${HC_URL} >/dev/null
