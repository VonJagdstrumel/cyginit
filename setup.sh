#!/usr/bin/env bash

"${1-./setup-x86_64}" \
    --delete-orphans \
    --local-package-dir "$LOCALAPPDATA\\Cygwin" \
    --no-admin \
    --no-desktop \
    $(awk '$0 { printf("%s%s", NR==1 ? "--packages " : ",", $0) }') \
    --quiet-mode \
    --site https://ftp.fau.de/cygwin/ \
    --site https://ftp.lip6.fr/pub/cygwin/ \
    --upgrade-also
