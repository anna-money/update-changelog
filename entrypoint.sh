#!/bin/sh -l
export PYTHONIOENCODING=UTF-8
export LC_CTYPE=en_US.UTF-8
export CHANGELOG_FILE=$1
export CHANGELOG_START_TAG=$2
export CHANGELOG_TEMPLATE_FILE=$3

export SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# git config gitchangelog.template-path "$SCRIPT_DIR/templates"
python3 ./gitchangelog ${CHANGELOG_START_TAG}..HEAD > $CHANGELOG_FILE
