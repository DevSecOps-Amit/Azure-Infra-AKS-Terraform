# Azure-Infra-AKS-Terraform

This repository contains Terraform code and Kubernetes manifests for deploying and managing Azure Kubernetes Service (AKS) infrastructure.

## Repository Structure

```
Azure-Infra-AKS-Terraform/
├── .gitignore
├── Manifest/
│   ├── Deployment-Statefulset/
│   ├── Pod-NS-Policy/
│   ├── PV-PVC/
│   ├── Sceduling/
│   └── StorageClass/
└── Terraform-Code/
    ├── main.tf
    └── provider.tf
```

### Manifest/

Contains Kubernetes YAML manifests for:
- Deployments and StatefulSets
- Pod and Network Policies
- Persistent Volumes (PV) and Persistent Volume Claims (PVC)
- Scheduling strategies (Node Affinity, Node Selector, etc.)
- Storage Classes

### Terraform-Code/

Contains Terraform configuration files for provisioning Azure resources, including:
- [`main.tf`](Terraform-Code/main.tf): Main infrastructure definitions
- [`provider.tf`](Terraform-Code/provider.tf): Azure provider configuration

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) v1.0+
- Azure subscription
- [kubectl](https://kubernetes.io/docs/tasks/tools/)

## Usage

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/Azure-Infra-AKS-Terraform.git
   cd Azure-Infra-AKS-Terraform/Terraform-Code
   ```

2. **Initialize Terraform:**
   ```sh
   terraform init
   ```

3. **Review and apply the Terraform plan:**
   ```sh
   terraform plan
   terraform apply
   ```

4. **Apply Kubernetes manifests:**
   ```sh
   kubectl apply -f ../Manifest/<subdirectory>/<manifest>.yaml
   ```

## Notes

- Update the `subscription_id` and other sensitive values in [`provider.tf`](Terraform-Code/provider.tf) as needed.
- Manifests are organized by resource type for clarity.

## License

This project is licensed under the MIT License.
