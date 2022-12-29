resource "aws_rds_cluster" "aurora" {
  for_each                = { for aurora in var.aurora_details : aurora.cluster_identifier => aurora }  
  cluster_identifier      = each.value.cluster_identifier
  engine                  = each.value.engine
  engine_version          = each.value.engine_version
  availability_zones      = each.value.availability_zones
  database_name           = each.value.database_name
  master_username         = each.value.master_username
  master_password         = each.value.master_password
  backup_retention_period = each.value.backup_retention_period
  preferred_backup_window = each.value.preferred_backup_window
  final_snapshot_identifier = each.value.final_snapshot_identifier
}