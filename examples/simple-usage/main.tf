terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

provider "spacelift" {
  alias = "my-spacelift"
}

module "example-stack" {
  source = "../../"

  new_stack_name = "example-stack"

  providers = {
    spacelift = spacelift.my-spacelift
  }
}
