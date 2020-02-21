resource "aws_lb" "default" {
  name               = "terraform-springboot-helloapp"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.default_lb.id}"]
  subnets            = ["subnet-c7415ba0", "subnet-a873d9e5"]

  enable_deletion_protection = true

  tags = {
    Environment = "dev"
  }
 }
