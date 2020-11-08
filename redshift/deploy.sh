#!/bin/bash

aws cloudformation deploy --template redshift_template.yml --stack-name redhisft-stack --parameter-overrides DataBucketName=new-dakobed-redshift-cluster --capabilities CAPABILITY_IAM