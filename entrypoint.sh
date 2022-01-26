#!/bin/sh -l
set -x
set -e
export PYTHONIOENCODING=UTF-8
export LC_CTYPE=en_US.UTF-8
export CHANGELOG_FILE=$1
export CHANGELOG_START_TAG=$2
export CHANGELOG_TEMPLATE_FILE=$3

export GITCHANGELOG_CONFIG_FILENAME=/.gitchangelog.rc

git config gitchangelog.template-path /templates
python3 /usr/bin/gitchangelog ${CHANGELOG_START_TAG}..HEAD > $CHANGELOG_FILE
