output "alb_dns_name" {
  description = "DNS del Load Balancer"
  value       = aws_lb.main.dns_name
}

output "ecr_repository_url" {
  description = "URL del repositorio ECR"
  value       = aws_ecr_repository.repo.repository_url
}
