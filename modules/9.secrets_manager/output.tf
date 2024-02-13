output "rds_secret" {
  value       = "${random_password.password.result}"
  sensitive   = true
  description = "description"
}
