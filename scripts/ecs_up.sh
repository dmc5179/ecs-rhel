#!/bin/bash

export CLUSTER_NAME='redhat'
export CLUSTER_CONFIG='redhat'
export PROFILE_NAME='redhat'

# EC2 Keypair for the ECS instances
export KEYPAIR=''
# Add in the AMI IDs which will be used to create instances for ECS
# RHEL 7
export AMI=''
# RHEL 8
export AMI=''

#ecs-cli up --keypair "${KEYPAIR}" --capability-iam \
#           --size 2 --instance-type t2.medium \
#           --cluster-config "${CLUSTER_CONFIG}" \
#           --ecs-profile "${PROFILE_NAME}" \
#           --image-id "${AMI}"

# Cluster with no nodes added
ecs-cli up --capability-iam --cluster-config "${CLUSTER_CONFIG}" --ecs-profile "${PROFILE_NAME}" help

