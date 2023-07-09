variable "project" {
  description = "The project ID to host the site in."
  type        = string
  default     = "cloud-friendly"
}

variable "enable_http" {
  description = "Set to false to disable plain HTTP. Note that disabling http does not force SSL and/or redirect HTTP traffic. See https://issuetracker.google.com/issues/35904733."
  type        = bool
  default     = true
}

variable "enable_ssl" {
  description = "Set to true to enable SSL. If set to 'true', self-signed certificates are created for you."
  type        = bool
  default     = false
}

variable "index_page" {
  description = "Bucket's directory index"
  type        = string
  default     = "index.html"
}

variable "not_found_page" {
  description = "The custom object to return when a requested resource is not found"
  type        = string
  default     = "404.html"
}

variable "access_logs_expiration_time_in_days" {
  description = "How many days to keep access logs around for before deleting them."
  type        = number
  default     = 30
}