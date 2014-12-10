#!/bin/bash

# System vars
TMPDIR="/tmp"

# Script vars
ROOT_DIR=$(dirname $0)
BASE_URL="http://demo.openl10n.io"
TEMP_DIR=$(mktemp -d tmp.XXXXXXXXX --tmpdir=$TMPDIR)
DEMO_DIR="/var/www/demo.openl10n.io/current"
LOG_FILE="/var/www/demo.openl10n.io/shared/app/logs/crontab.log"
OPENL10N="/usr/local/bin/openl10n"

function exec_cmd {
    $1 >> $LOG_FILE 2>&1
}

# Execute the reset script
exec_cmd "$DEMO_DIR/reset.sh --env=prod --no-debug"

# Import projects
#exec_cmd "git clone https://github.com/openl10n/demo-silex.git $TEMP_DIR/demo-silex"
#exec_cmd "$OPENL10N --working-dir=$TEMP_DIR/demo-silex --no-interaction init http://user:userpass@demo.openl10n.io"
#exec_cmd "$OPENL10N --working-dir=$TEMP_DIR/demo-silex --no-interaction push --locale=all"
