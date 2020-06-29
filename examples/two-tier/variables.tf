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
    #us-east-1 = "ami-06e83aceba2cb0907"
    ap-northeast-2 = "ami-06e83aceba2cb0907"
  }
}
