provider "spacelift" {
  alias = "my-spacelift"
}

module "example-stack" {
  source = "spacelift.io/spacelift-io/example/spacelift"

  new_stack_name = "example-stack"

  providers = {
    spacelift = spacelift.my-spacelift
  }
}
