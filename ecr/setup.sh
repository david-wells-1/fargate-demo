#!/bin/bash

export AWS_ACCOUNT="YOUR_AWS_ACCOUNT_ID_HERE"
export AWS_REGION="eu-west-2"
export ECR_NAME="fargate-demo"

aws ecr describe-repositories --repository-name ${ECR_NAME} || aws ecr create-repository --repository-name ${ECR_NAME} --tags Key=Name,Value=${ECR_NAME}

aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT}.dkr.ecr.${AWS_REGION}.amazonaws.com

docker build -t ${ECR_NAME} .

docker tag ${ECR_NAME}:latest ${AWS_ACCOUNT}.dkr.ecr.${AWS_REGION}.amazonaws.com/${ECR_NAME}:latest

docker push ${AWS_ACCOUNT}.dkr.ecr.${AWS_REGION}.amazonaws.com/${ECR_NAME}:latest