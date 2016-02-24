#!/bin/bash

. ./aws_env.sh

aws ec2 create-key-pair --key-name $AWS_KEYPAIR_NAME --query 'KeyMaterial' --output text> $SSH_PRIVATE_KEY_PATH
chmod 400 $SSH_PRIVATE_KEY_PATH

vagrant up --provider aws
