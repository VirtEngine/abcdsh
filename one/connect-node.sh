#!/bin/bash


# exit on any error
set -e
echo "one host creation from opennebula master"

ROOT=$(dirname "${BASH_SOURCE}")
source $ROOT/"create-node.sh"

#connect node to opennebula master
function connect_host() {
parse_hostparams "$@"
createhost
}

connect_host "$@"
