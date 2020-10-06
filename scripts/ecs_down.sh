#!/bin/bash

export CLUSTER_NAME='redhat'
export CLUSTER_CONFIG='redhat'
export PROFILE_NAME='redhat'

ecs-cli down --force \
             --region "${AWS_DEFAULT_REGION}" \
             --ecs-profile "${PROFILE_NAME}" \
             --cluster-config "${CLUSTER_CONFIG}" \
             --cluster "${CLUSTER_NAME}"
