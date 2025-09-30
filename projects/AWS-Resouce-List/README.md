\# AWS Resource Lister Script



\## 📌 Description

This project contains a \*\*Bash script\*\* (`aws\_resource\_list.sh`) that lists AWS resources for a given service in a specified region using the \*\*AWS CLI\*\*.  

It is useful for quickly checking what resources are running in your AWS account without manually navigating through the AWS Console.  



Supported AWS Services:

\- EC2 (Instances)

\- S3 (Buckets)

\- RDS (Databases)

\- Lambda (Functions)

\- EBS (Volumes)

\- VPC

\- IAM (Users)

\- CloudFront (Distributions)

\- CloudWatch (Alarms)

\- SNS (Topics)

\- SQS (Queues)

\- DynamoDB (Tables)

\- ELB (Elastic Load Balancers)

\- Auto Scaling Groups

\- Route53 (Hosted Zones)

\- EKS (Kubernetes Clusters)



---



\## 🛠️ Prerequisites

1\. \*\*AWS CLI\*\* installed on your system.  

&nbsp;  👉 \[Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)  



2\. \*\*AWS CLI configured\*\* with valid credentials:  

&nbsp;  ```bash

&nbsp;  aws configure



