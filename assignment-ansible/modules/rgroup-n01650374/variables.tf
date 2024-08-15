variable "rgroup_name" {
  default = "n01650374-RG"
}

variable "location" {
  default = "UK West"
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
}
