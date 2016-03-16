#!/bin/bash

# Usage
# $1 is the name of the new pool
# $2 is the path to the new pool

virsh pool-define-as $1 dir - - - - $2

virsh pool-list --all

virsh poll-build $1
