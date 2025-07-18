output "ecs_cluster_id" {
  value = aws_ecs_cluster.main.id
}

output "ecs_task_execution_role" {
  value = aws_iam_role.task_execution.arn
}