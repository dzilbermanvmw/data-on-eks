locals {
  name          = var.name
  region        = var.region
  #DZ for us-east-1 there are 3 AZs, have to restore upper boundary 
  azs           = slice(data.aws_availability_zones.available.names, 0, 3)
  vpc_endpoints = ["autoscaling", "ecr.api", "ecr.dkr", "ec2", "ec2messages", "elasticloadbalancing", "sts", "kms", "logs", "ssm", "ssmmessages"]
  #DZ: spark-team-1
  spark_team    = "spark-team-1"

  tags = {
    Blueprint  = local.name
    #DZ update to my repo: https://github.com/dzilbermanvmw/data-on-eks
    GithubRepo = "github.com/dzilbermanvmw/data-on-eks"
  }
}
