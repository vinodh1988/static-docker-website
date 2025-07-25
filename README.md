# static-docker-website

## Installing Azure CLI on Ubuntu 22.04

To install the Azure CLI on Ubuntu 22.04, follow these steps:

```bash
# Update package index and install prerequisites
sudo apt-get update
sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg

# Download and add the Microsoft signing key
curl -sL https://packages.microsoft.com/keys/microsoft.asc | \
    gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null

# Add the Azure CLI software repository
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
    sudo tee /etc/apt/sources.list.d/azure-cli.list

# Update repository information and install the Azure CLI
sudo apt-get update
sudo apt-get install azure-cli
```

For more details, see the [official documentation](https://learn.microsoft.com/cli/azure/install-azure-cli-linux?pivots=apt).

## Getting AKS Cluster Credentials

To get credentials for your Azure Kubernetes Service (AKS) cluster using the Azure CLI, use the following command:

```bash
az aks get-credentials --resource-group <RESOURCE_GROUP_NAME> --name <CLUSTER_NAME>
az aks get-credentials --resource-group aws --name kubecluster
```

Replace `<RESOURCE_GROUP_NAME>` with your resource group and `<CLUSTER_NAME>` with your AKS cluster name.

This command configures `kubectl` to use your AKS cluster.

## Installing kubectl using Azure CLI

You can install `kubectl` (the Kubernetes command-line tool) using the Azure CLI with the following command:

```bash
az aks install-cli
```

This command downloads and installs the latest version of `kubectl` compatible with your system.

For more information, refer to the [Azure CLI documentation for installing kubectl](https://learn.microsoft.com/cli/azure/aks?view=azure-cli-latest#az-aks-install-cli).


## Common `kubectl` Commands

Here are some useful `kubectl` commands for working with Kubernetes:

### Create a Pod
```bash
kubectl run my-pod --image=nginx
```

### Expose a Pod
```bash
kubectl expose pod my-pod --port=80 --type=NodePort
```

### Create a Deployment
```bash
kubectl create deployment my-deployment --image=nginx
```

### Scale a Deployment
```bash
kubectl scale deployment my-deployment --replicas=3
```

### Get Pods
```bash
kubectl get pods
```

### Get Deployments
```bash
kubectl get deployments
```

### Delete a Pod
```bash
kubectl delete pod my-pod
```

### Delete a Deployment
```bash
kubectl delete deployment my-deployment
```

For more commands, see the [kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/).