locals {
  name          = var.name
  region        = var.region
  #DZ for us-west-1 there are 2 AZs, have to reduce upper boundary 
  azs           = slice(data.aws_availability_zones.available.names, 0, 2)
  vpc_endpoints = ["autoscaling", "ecr.api", "ecr.dkr", "ec2", "ec2messages", "elasticloadbalancing", "sts", "kms", "logs", "ssm", "ssmmessages"]
  spark_team    = "spark-team-a"

  tags = {
    Blueprint  = local.name
    GithubRepo = "github.com/awslabs/data-on-eks"
  }
}
