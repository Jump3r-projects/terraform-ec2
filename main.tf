terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
#   match aws config file in ~/.aws
  region = var.region_name
}

resource "aws_instance" "app_server" {
# change ami to ami ID in region 
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

// troubleshooting commands
    // aws configure : set aws access key, secret key and region
    // aws configure list : see list of profiles/details
    // aws sts get-caller-identity : returns userID, account and ARN
    // aws sts get-caller-identity --profile user1 : for a specific user1
//script remove aws credentials env and re-add them after 
    //for var in AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN AWS_SECURITY_TOKEN ; do eval unset $var ; done
    
