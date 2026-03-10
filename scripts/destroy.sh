#!/bin/bash
# destroy.sh - Teardown Terraform infrastructure

echo "⚠️  Starting AWS Infrastructure Teardown..."

cd terraform

# Destroy infrastructure
echo "Destroying Terraform-managed resources..."
terraform destroy -auto-approve

echo "✅ Teardown complete!"
