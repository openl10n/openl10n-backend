#!/usr/bin/env bash
set -e

# System vars
[ -z "$TMPDIR" ] && TMPDIR="/tmp"

# Script vars
ROOT_DIR=$(dirname $0)
BASE_URL="http://demo.openl10n.io"
TEMP_DIR=$(mktemp -d tmp.XXXXXXXXX --tmpdir=$TMPDIR)
DEMO_DIR="/var/www/demo.openl10n.io/current"
OPENL10N="/usr/local/bin/openl10n"
WWW_USER="www-data"

# Execute the reset script
sudo -u $WWW_USER $DEMO_DIR/reset.sh --env=prod --no-debug

# Import projects
#git clone https://github.com/openl10n/demo-silex.git $TEMP_DIR/demo-silex
#$OPENL10N --working-dir=$TEMP_DIR/demo-silex --no-interaction init http://user:userpass@demo.openl10n.io
#$OPENL10N --working-dir=$TEMP_DIR/demo-silex --no-interaction push --locale=all
