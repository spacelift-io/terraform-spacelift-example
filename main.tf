resource "spacelift_stack" "stack-managed-by-cube2222-testing-spacelift4" {
  name = var.new_stack_name

  administrative    = true
  autodeploy        = false
  branch            = "master"
  description       = "Shared production infrastructure (networking, k8s)"
  repository        = "testing-spacelift"
  terraform_version = "0.12.6"
}

resource "spacelift_stack_webhook" "simple-webhook-4" {
  stack_id = spacelift_stack.stack-managed-by-cube2222-testing-spacelift4.id

  endpoint = "localtest.me/amazin94new"
  secret = "test_secret2"
}
