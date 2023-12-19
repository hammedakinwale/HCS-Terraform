# create DB subnet group from the private subnets
resource "aws_db_subnet_group" "HCS-rds" {
  name       = "hcs-rds"
  subnet_ids = [aws_subnet.private[2].id, aws_subnet.private[3].id]

   tags = merge(
    var.tags,
    {
      Name = "HCS-rds"
    },
  )
}

# create the RDS instance with the subnets group
resource "aws_db_instance" "HCS-rds" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  db_name                = "hammeddb"
  username               = var.db-username
  password               = var.db-password
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = aws_db_subnet_group.HCS-rds.name
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.datalayer-sg.id]
  multi_az               = "true"
}
