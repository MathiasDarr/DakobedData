#!/bin/bash




sam package \
  --template-file template.yaml \
  --s3-bucket "dakobed-serverless-apis" \
  --output-template-file package.yaml

if [[ $1 == 'aws' ]]
then
    aws cloudformation deploy \
      --template-file package.yaml \
      --stack-name data-process-stack \
      --capabilities CAPABILITY_IAM

elif [[ $1 == 'local' ]]
then
  aws  --endpoint-url=http://localhost:4566 cloudformation deploy \
      --template-file package.yaml \
      --stack-name data-process-stack \
      --capabilities CAPABILITY_IAM
else
    echo "choose either local or aws"
fi