provider "spacelift" {
  alias = "my-spacelift"
}

module "example-stack" {
  source = "../"

  new_stack_name = "example-stack"

  providers = {
    spacelift = spacelift.my-spacelift
  }
}
