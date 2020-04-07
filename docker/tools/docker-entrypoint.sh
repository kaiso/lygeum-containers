#!/bin/bash
set -e pipefail

if [[ -z ${DB_VENDOR:-} ]]; then
    export DB_VENDOR="h2"
fi

case "$DB_VENDOR" in
    postgres)
        if [[ -z ${DB_HOST:-} ]] ; then
          DB_HOST="postgres"
        fi
        ;;
    h2)
        DB_HOST="Embedded H2";;
    *)
        echo "Unknown DB vendor $DB_VENDOR"
        exit 1
esac

ARGS="--db-vendor=$DB_VENDOR   --db-host=$DB_HOST"
if [ -n "$DB_USER" ];then ARGS="$ARGS --db-user=$DB_USER";fi
if [ -n "$DB_PASSWORD" ];then ARGS="$ARGS --db-password=$DB_PASSWORD";fi
if [ -n "$DB_DATABASE" ];then ARGS="$ARGS  --db-database=$DB_DATABASE";fi
if [ -n "$CONTEXT_PATH" ];then ARGS="$ARGS  --context-path=$CONTEXT_PATH";fi



java -jar /opt/app/$LYGEUM_BINARY $ARGS