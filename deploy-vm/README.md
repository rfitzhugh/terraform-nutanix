# Deploy an AHV VM

The example `terraform.tfvars` file demonstrates the information you will need to supply to create a new virtual machine. To create more than one VM, use the `count` attribute in the vm block to define quantity.

In addition to use this, you will need to find and update the following UUIDs in the your variables file:

* Cluster
* Subnet
* Disk

## Cluster UUID

The Subnet UUID can be retrived by using the API Explorer and navigating to `GET /cluster/`. The response body should contain the `"uuid":` field for you to copy and replace the placeholder value in the example `terraform.tfvars` file. 

Alternatively, you may find this in the UI by clicking `Production` (cluster name) in the upper left hand corner. In the dialog you will be able to copy the UUID. 

## Subnet UUID

The Subnet UUID can be retrived by using the API Explorer and navigating to `GET /networks/`. The response body should contain the `"uuid":` field for you to copy and replace the placeholder value in the example `terraform.tfvars` file.

Alternatively, you may find this in the UI by navigating to the dropdown and selecting **Settings** > **Network Configuration** and click the pencil icon next to the desired network. In the dialog you will be able to copy the UUID. 

## Disk Image UUID

The Disk Image UUID can be retrived by using the API Explorer and navigating to `GET /images/`. The response body should contain the `"uuid":` field for you to copy and replace the placeholder value in the example `terraform.tfvars` file.