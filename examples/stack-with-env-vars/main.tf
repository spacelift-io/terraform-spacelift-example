terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

module "stack" {
  source = "../../"

  new_stack_name = "stack-with-env-vars-${var.spacelift_run_id}"
}

resource "spacelift_environment_variable" "var1" {
  stack_id   = module.stack.new_stack_id
  name       = "MY_VAR"
  value      = "hello"
  write_only = false
}

resource "spacelift_environment_variable" "var2" {
  stack_id   = module.stack.new_stack_id
  name       = "SUPER_SECRET"
  value      = "secret-stuff"
  write_only = true
}
