#!/bin/bash

#####################################################################################################
# Description: This script lists all AWS resources in the specified region using AWS CLI.
# Author : Neha Gusain
# version : 0.0.1
#
# Following are the AWS services supported by this script
# 1. EC2
# 2. S3
# 3. RDS
# 4. Lambda
# 5. EBS
# 6. VPC
# 7. IAM
# 8. CloudFront
# 9. CloudWatch
# 10. SNS
# 11. SQS
# 12. DynamoDB
# 13. ELB
# 14. Auto Scaling
# 15. Route53
# 16. EKS
#
# Usage: ./aws_resource_list.sh <region> <service_name>
# Example: ./aws_resource_list.sh us-east-1 EC2
#####################################################################################################

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <region> <service_name>"
    exit 1
fi

# check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI could not be found. Please install it and configure your credentials."
    exit 1
fi

# check if aws cli is configured
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured. Please configure it using 'aws configure'."
    exit 1
fi

# check which service to list resources for
case $2 in
    EC2)
        aws ec2 describe-instances --region $1 
        ;;
    S3)
        aws s3api list-buckets 
        ;;
    RDS)
        aws rds describe-db-instances --region $1 
        ;;
    Lambda)
        aws lambda list-functions --region $1 
        ;;
    EBS)
        aws ec2 describe-volumes --region $1 
        ;;
    VPC)
        aws ec2 describe-vpcs --region $1 
        ;;
    IAM)
        aws iam list-users 
        ;;
    CloudFront)
        aws cloudfront list-distributions 
        ;;
    CloudWatch)
        aws cloudwatch describe-alarms --region $1 
        ;;
    SNS)
        aws sns list-topics --region $1 
        ;;
    SQS)
        aws sqs list-queues --region $1 
        ;;
    DynamoDB)
        aws dynamodb list-tables --region $1 
        ;;
    ELB)
        aws elb describe-load-balancers --region $1 
        ;;
    "Auto Scaling")
        aws autoscaling describe-auto-scaling-groups --region $1 
        ;;
    Route53)
        aws route53 list-hosted-zones 
        ;;
    EKS)
        aws eks list-clusters --region $1 
        ;;
    *)
        echo "Unsupported service. Supported services are: EC2, S3, RDS, Lambda, EBS, VPC, IAM, CloudFront, CloudWatch, SNS, SQS, DynamoDB, ELB, Auto Scaling, Route53, EKS."
        exit 1
        ;;
esac

