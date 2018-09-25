#!/bin/sh
set -x
set -e

ASSERT_ON="${ASSERT_ON_JSON_VALUE:-'"Up"'}"
FLAG=1
COUNTER=0
RETRY="${NO_OF_RETRY:-1}"
while [ $RETRY -gt $COUNTER ] || [ $FLAG -eq 0 ]
	do
		OUT=`eval "$1"`
		echo $OUT
		if [[ $OUT = $ASSERT_ON ]]; then 
			FLAG=0
		fi
		COUNTER=$((COUNTER+1))
		sleep $((COUNTER))
	done

exit 1
