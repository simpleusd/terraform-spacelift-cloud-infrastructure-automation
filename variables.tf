variable "stack_config_path" {
  type        = string
  description = "Relative path to YAML config files"
  default     = null
}

variable "stack_config_pattern" {
  type        = string
  description = "File pattern used to locate configuration files"
  default     = "*.yaml"
}

variable "repository" {
  type        = string
  description = "The name of your infrastructure repo"
}

variable "branch" {
  type        = string
  description = "Specify which branch to use within your infrastructure repo"
  default     = "main"
}

variable "components_path" {
  type        = string
  description = "The relative pathname for where all components reside"
  default     = "components"
}

variable "manage_state" {
  type        = bool
  description = "Global flag to enable/disable manage_state settings for all project stacks."
  default     = true
}

variable "terraform_version" {
  type        = string
  description = "Specify the version of Terraform to use for the stack"
  default     = null
}

variable "external_execution" {
  type        = bool
  description = "Set this to true if you're calling this module from outside of a Spacelift stack (e.g. the `complete` example)."
  default     = false
}

variable "worker_pool_id" {
  type        = string
  description = "The immutable ID (slug) of the worker pool"
  default     = null
}

variable "runner_image" {
  type        = string
  description = "The full image name and tag of the Docker image to use in Spacelift"
  default     = null
}

variable "before_init" {
  type        = list
  description = "A list of commands to execute in Spacelift before initializing Terraform"
  default     = null
}
