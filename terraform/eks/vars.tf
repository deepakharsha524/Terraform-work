variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}
variable "access_key" {
     default     = ""
}
variable "secret_key"
{
    default     = ""
}

