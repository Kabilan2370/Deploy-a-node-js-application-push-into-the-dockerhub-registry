variable "cidr_block" {
    description = "cidr"
    type        = string
    default     = "10.0.0.0/16"
}
variable "host_name" {
    description = "host_name"
    type        = bool
    default     = true 
}
variable "ami_id" {
    description = "AMI_id"
    type       = string
    default    = "ami-0e86e20dae9224db8"   
}
variable "inst_type" {
    description = "inst_type"
    type        = string
    default     = "t2.micro"
}

variable "subnet" {
    description = "subnet"
    type        = string
    default     = "subnet-0cd017b940fa1f7e8"
}

# variable "secutiy" {
#     description = "security"
#     type        = string
#     default     = "sg-04247582f52776c81","sg-0e133b35a09b1db4f"
# }
variable "key" {
    description = "key_name"
    type        = string
    default     = "beankey"
}
variable "public_key" {
    description = "public_key"
    type        = bool
    default     = true

}