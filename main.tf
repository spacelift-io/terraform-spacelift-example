terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

resource "spacelift_stack" "example-stack" {
  name = var.new_stack_name

  administrative    = true
  autodeploy        = false
  branch            = "master"
  description       = "Shared production infrastructure (networking, k8s)"
  repository        = "testing-spacelift"
  terraform_version = "0.12.27"
}

resource "spacelift_webhook" "simple-webhook-4" {
  stack_id = spacelift_stack.example-stack.id

  endpoint = "https://example.com/example_webhook"
  secret   = "my_secret"
}
