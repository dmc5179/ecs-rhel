#!/bin/bash

export CLUSTER_NAME='redhat'
export CLUSTER_CONFIG='redhat'
export PROFILE_NAME='redhat'
export KEYPAIR='danclark-personal'
# RHEL 7
#export AMI='ami-0c5e670c9f7ab3c15'
# RHEL 8
export AMI='ami-0e58243939f4798b0'

ecs-cli up --keypair "${KEYPAIR}" --capability-iam \
           --size 2 --instance-type t2.medium \
           --cluster-config "${CLUSTER_CONFIG}" \
           --ecs-profile "${PROFILE_NAME}" \
           --image-id "${AMI}"
