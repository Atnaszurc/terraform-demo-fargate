output "load_balancer_dns_name" {
  value = "http://${module.alb.dns_name}"

}

# ################################################################################
# # Standalone Task Definition (w/o Service)
# ################################################################################

# output "task_definition_run_task_command" {
#   description = "awscli command to run the standalone task"
#   value       = <<EOT
#     aws ecs run-task --cluster ${module.ecs_cluster.name} \
#       --task-definition ${module.ecs_task_definition.task_definition_family_revision} \
#       --network-configuration "awsvpcConfiguration={subnets=[${join(",", module.vpc.private_subnets)}],securityGroups=[${module.ecs_task_definition.security_group_id}]}" \
#       --region ${local.region}
#   EOT
# }
