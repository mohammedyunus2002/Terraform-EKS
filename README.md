# Terraform EKS Cluster Setup

This repository contains a Terraform configuration to set up an **Amazon Elastic Kubernetes Service (EKS)** cluster with a variety of AWS services and Kubernetes components, including **VPC**, **IAM roles**, **Horizontal Pod Autoscaler (HPA)**, **AWS Load Balancer**, **NGINX Ingress Controller**, **EKS CSI**, **AWS Secrets Manager**, and **EKS ESF**.

## Prerequisites

- AWS account with the necessary permissions to create resources (VPC, IAM, EKS, etc.).
- [Terraform](https://www.terraform.io/downloads.html) installed.
- [AWS CLI](https://aws.amazon.com/cli/) installed and configured.
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed to manage your Kubernetes cluster.
- Access to an **IAM user/role** with sufficient privileges to create EKS clusters, IAM roles, VPCs, etc.
- **AWS Secrets Manager** to store sensitive information like database credentials.

## Overview of Architecture

This setup provisions:

- **VPC**: Custom Virtual Private Cloud for the EKS cluster.
- **IAM Roles**: Roles for EKS and worker node access.
- **Horizontal Pod Autoscaler (HPA)**: Automatically scale Kubernetes workloads.
- **AWS Load Balancer**: For exposing services externally.
- **NGINX Ingress Controller**: Handles HTTP/HTTPS routing in the cluster.
- **EKS CSI**: EKS Container Storage Interface for persistent storage management.
- **AWS Secrets Manager**: Secure storage of secrets.
- **EKS ESF**: EFS integration for file storage.

## Folder Structure

```bash
.
├── terraform/
│   ├── 0-locals.tf                  # Local variables for the environment
│   ├── 1-providers.tf               # AWS provider configuration
│   ├── 2-vpc.tf                     # VPC setup for EKS
│   ├── 3-iam.tf                     # IAM roles and policies for EKS
│   ├── 4-eks-cluster.tf             # EKS cluster setup
│   ├── 5-autoscaler.tf              # HPA and Cluster Autoscaler setup
│   ├── 6-load-balancer.tf           # AWS Load Balancer configuration
│   ├── 7-nginx-ingress-controller.tf # NGINX Ingress Controller setup
│   ├── 8-eks-csi.tf                 # EKS CSI for persistent storage
│   ├── 9-aws-secrets.tf             # AWS Secrets Manager configuration
│   └── terraform.tfstate            # Terraform state file
└── README.md
