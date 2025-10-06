variable "rustfs_endpoint" {
  description = "RustFS instance endpoint"
  type        = string
  default     = "http://localhost:9000"
}

variable "rustfs_access_key" {
  description = "RustFS access key"
  type        = string
  default     = "rustfsadmin"
}

variable "rustfs_secret_key" {
  description = "RustFS secret key"
  type        = string
  default     = "rustfsadmin"
}

variable "rustfs_region" {
  description = "The region of RustFS instance"
  type        = string
  default     = "cn-east-1"
}

variable "bucket_name" {
  description = "The name of the RustFS bucket"
  type        = string
  default     = "terraform-demo-bucket"
}
