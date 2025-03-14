variable "zone" {
  description = "Zone for the temporary VM"
  type        = string
  default     = "us-central1-a"
}

variable "instance_template" {
  description = "Name of the instance template"
  type        = string
  default     = "bdelic-terraform-instance-template"
}

variable "machine_type" {
  description = "Type of machines in instance template"
  type        = string
  default     = "e2-micro"
}

variable "subnet" {
  description = "Subnet for the instances"
  type        = string
}

variable "instance_group_base_name" {
  description = "Base name of each instance in instance group"
  type        = string
  default     = "bdelic-ansible-group-instance"
}

variable "instance_group" {
  description = "Name of the instance group"
  type        = string
  default     = "bdelic-instance-group-manager"
}

variable "target_size" {
  description = "Number of instances in instance group"
  type        = number
  default     = 2
}