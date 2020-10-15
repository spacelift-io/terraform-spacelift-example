provider "spacelift" {}

variable "new_stack_name" {
  type = string
  description = "Description for the stack to create."
}