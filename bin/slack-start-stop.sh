#!/bin/bash

# 0 * * * * /Users/kbarret8/bin/slack-start-stop.sh start
# 3-59 * * * * /Users/kbarret8/bin/slack-start-stop.sh stop

DO_START=0
DO_STOP=0

while [ "$1" != "" ]; do
    case $1 in
        start) DO_START=1;;
        stop)  DO_STOP=1;;
        *)     echo '?' && exit 1;;
    esac
    shift
done

if [[ "${DO_STOP}" == "1" ]]
then
    FOREGOUNDED_APP=$(osascript -e 'tell application "System Events"' -e 'set frontApp to name of first application process whose frontmost is true' -e 'end tell')
    if [[ ${FOREGOUNDED_APP} == 'Slack' ]]
    then
        exit
    else
        killall Slack
    fi
    exit 0
fi

if [[ "${DO_START}" == "1" ]]
then
    open ~/Applications/Slack.app
    exit 0
fi
