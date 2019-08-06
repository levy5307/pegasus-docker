#!/usr/bin/env bash

# Configure the following variables to customize the docker cluster. #

# The ip prefix for each nodes.
# Meta-x's ip address is 172.21.0.1{x}:34601.
# Replica-x's ip address is 172.21.0.2{x}:34801
# Zookeeper's ip address is 172.21.0.31:2181
export NODE_IP_PREFIX=172.21.0

# The exported port of pegasus meta-server.
# Please ensure this port is not occupied by other programs.
export META_PORT=34601

# Different clusters are isolated by their cluster name and the NODE_IP_PREFIX.
export CLUSTER_NAME=onebox

export IMAGE_NAME='registry.cn-beijing.aliyuncs.com\/pegasus-kv\/pegasus:1.11.5'

# allow_non_idempotent_write = true
# for jepsen test this option must be enabled.
export IDEMPOTENT=true

# Config End #
##############
# The following are constants.

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

export ROOT

export DOCKER_DIR=${ROOT}/${CLUSTER_NAME}-docker # Where docker onebox resides.
export META_COUNT=1                              # Number of meta instances.
export REPLICA_COUNT=1                           # Number of replica instances.
