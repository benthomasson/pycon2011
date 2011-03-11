#!/bin/bash

# Replace these three settings.
PROJDIR="/root/pycon2011/play"
PIDFILE="$PROJDIR/mysite.pid"
SOCKET="$PROJDIR/mysite.sock"

cd $PROJDIR
if [ -f $PIDFILE ]; then
    kill `cat -- $PIDFILE`
    rm -f -- $PIDFILE
fi

exec ./manage.py runfcgi pidfile=$PIDFILE host=127.0.0.1 port=3033

