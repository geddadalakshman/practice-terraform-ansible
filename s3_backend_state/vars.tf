variable "ec2_instances" {
  default = {
    frontend = {
        name = "frontend",
        type = "t2.micro"
    }
    backend = {
        name = "backend",
        type = "t3.micro"
    } 
  }
}