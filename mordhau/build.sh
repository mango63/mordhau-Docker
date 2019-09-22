#!/bin/bash
SECONDS=0
. ../common.sh

docker_build mordhau
echo "Built in ${SECONDS} seconds"
