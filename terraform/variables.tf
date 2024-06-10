# variables.tf
variable "cluster_name" {
  type = string
  description = "Name for your EKS cluster"
  default = "my-eks-cluster"  # Set a default value here
}

variable "node_instance_type" {
  type = string
  description = "EC2 instance type for worker nodes (e.g. t2.medium)"
  default = "t2.medium"  # Set a default value here
}

variable "desired_capacity" {
  type = number
  description = "Desired number of worker nodes in the cluster"
  default = 2  # Set a default value here
}
