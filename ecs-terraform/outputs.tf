output "ecs_cluster_name" {
  value = aws_ecs_cluster.this.name
}

output "frontend_service_arn" {
  value = aws_ecs_service.frontend.arn
}

output "backend_service_arn" {
  value = aws_ecs_service.backend.arn
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}
