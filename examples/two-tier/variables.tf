variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
}

variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}

# Centos 7
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-0d4002a13019b7703"
    us-east-1 = "ami-06cf02a98a61f9f5e"
    us-west-1 = "ami-02676464a065c9c05"
    us-west-2 = "ami-0a248ce88bcc7bd23"
    ap-northeast-2 = "ami-0cf8e67d10c823f2e"
  }
}
