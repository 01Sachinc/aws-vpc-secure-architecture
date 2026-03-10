#!/bin/bash
# deploy.sh - Initialize and apply Terraform infrastructure

echo "🚀 Starting AWS Infrastructure Deployment..."

cd terraform

# Initialize Terraform
echo "Initializing Terraform..."
terraform init

# Plan transformation
echo "Generating Terraform plan..."
terraform plan -out=tfplan

# Apply transformation
echo "Applying Terraform plan..."
terraform apply "tfplan"

echo "✅ Deployment complete!"
