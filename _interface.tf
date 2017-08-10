# Optional Variables
variable "private_key_filename" {
  default     = "private_key.pem"
  description = "Filename to write the private key data to (e.g. private_key.pem)"
}

# Outputs
output "private_key_pem" {
  value = "${tls_private_key.main.private_key_pem}"
}

output "public_key_data" {
  value = "${tls_private_key.main.public_key_openssh}"
}

output "private_key_filename" {
  value = "${var.private_key_filename}"
}
