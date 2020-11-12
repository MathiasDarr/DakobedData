#!/bin/bash

if [[ $1 == 'aws' ]]
then
  aws cloudformation list-stack-resources --stack-name kinesis-orders-stack
elif [[ $1 == 'local' ]]
then
  aws --endpoint-url=http://localhost:4566 cloudformation list-stack-resources --stack-name kinesis-orders-stack
else
    echo "choose either local or aws"
fi



