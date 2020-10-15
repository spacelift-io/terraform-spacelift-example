provider "spacelift" {
  alias = "my-spacelift"
}

module "test-my-module" {
  source = "../"

  new_stack_name = "test-module"

  providers = {
    spacelift = spacelift.my-spacelift
  }
}