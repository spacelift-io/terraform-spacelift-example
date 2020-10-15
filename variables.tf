terraform {
  required_providers {
    spacelift = {
      source = "registry.spacelift.io/spacelift-io/spacelift"
    }
  }
}

provider "spacelift" {}

variable "new_stack_name" {
  type        = string
  description = "description new-stack-name description"
}