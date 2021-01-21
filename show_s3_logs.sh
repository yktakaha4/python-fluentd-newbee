#!/bin/bash -eu

export AWS_ACCESS_KEY_ID=dummy
export AWS_SECRET_ACCESS_KEY=dummy
OPTIONS="--endpoint-url=http://localhost:4566"

BUCKET_NAME="sample-bucket"

aws s3 ls "s3://$BUCKET_NAME/logs/" $OPTIONS |
awk '{print $NF}' |
while read filename
do
  aws s3 cp "s3://$BUCKET_NAME/logs/$filename" - $OPTIONS |
  zcat
done |
sort
