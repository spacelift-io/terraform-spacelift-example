provider "spacelift" {
  alias = "my-spacelift"
}

module "test-my-module" {
  source = "../"

  new_stack_name = "module-stack-name"

  providers = {
    spacelift = spacelift.my-spacelift
  }
}