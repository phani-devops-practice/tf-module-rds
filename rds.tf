resource "aws_db_instance" "main" {
  allocated_storage    = 10
  engine               = var.RDS_ENGINE
  engine_version       = var.RDS_ENGINE_VERSION
  instance_class       = var.RDS_INSTANCE_CLASS
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = aws_db_parameter_group.main.name
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.main.id]
  skip_final_snapshot  = true
  identifier           = local.TAG_PREFIX
}




