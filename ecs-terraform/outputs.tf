output "ecs_cluster_name" {
  value = aws_ecs_cluster.this.name
}

output "frontend_service_arn" {
  value = aws_ecs_service.frontend.id
}

output "backend_service_arn" {
  value = aws_ecs_service.backend.id
}

output "public_subnet_a_id" {
  value = aws_subnet.public_a.id
}

output "public_subnet_b_id" {
  value = aws_subnet.public_b.id
}
