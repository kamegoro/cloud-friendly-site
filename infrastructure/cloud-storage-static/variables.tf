variable "project" {
  description = "The project ID to host the site in."
  type        = string
  default     = "cloud-friendly"
}

variable "index_page" {
  description = "Bucket's directory index"
  type        = string
  default     = "index.html"
}

variable "access_logs_expiration_time_in_days" {
  description = "How many days to keep access logs around for before deleting them."
  type        = number
  default     = 30
}