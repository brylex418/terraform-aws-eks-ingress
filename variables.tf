# -----------------------------------------------------------------------------
# Common module variables
# -----------------------------------------------------------------------------
variable "tags" {
  type        = map(any)
  default     = {}
  description = "Common tags to apply to all taggable resources."
}


# -----------------------------------------------------------------------------
# Ingress variables
# -----------------------------------------------------------------------------
variable "clusterName" {
  type = string
}

variable "region" {
  type    = string
  default = "us-west-2"
}