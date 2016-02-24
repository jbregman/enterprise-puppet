#!/bin/bash

cat << EOF | aws configure




EOF

export AWS_ACCESS_KEY_ID=$(awk '/^aws_access_key_id/{print $3}' ~/.aws/credentials)
export AWS_SECRET_ACCESS_KEY=$(awk '/^aws_secret_access_key/{print $3}' ~/.aws/credentials)
export AWS_KEYPAIR_NAME=launch-enterprise-puppet-$HOSTNAME
mkdir ~/.ssh
export SSH_PRIVATE_KEY_PATH=~/.ssh/id_$AWS_KEYPAIR_NAME
export AWS_BASE_AMI=ami-fce3c696
