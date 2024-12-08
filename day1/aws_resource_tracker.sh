#!/bin/bash
#
#########################
# 
# Author : Saqlain
# Date : 06/DEC/2024
#
# Version : v1
#
# This script will report the aws resource usage
#
#########################
#
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x


# list s3 buckets
aws s3 ls

# list EC2 instances

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda

aws lambda list-functions

# list IAM users

aws iam list-users
