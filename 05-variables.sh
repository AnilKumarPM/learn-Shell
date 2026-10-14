#!/bin/bash

START_TIME=$(date +%s)

echo "script executed time: $START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "script completed execution time:$END_TIME"

TOTAL_TIME=$((END_TIME-START_TIME))

echo "Total time taken :$TOTAL_TIME Seconds "