# Define variables
variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t2.micro"
}

variable "ami_id" {
    description = "AMI ID"
    type        = string
    default     = "ami-0c94855ba95c71c99"
}

# Create EC2 instance
resource "aws_instance" "ec2_instance" {
    ami           = var.ami_id
    instance_type = var.instance_type

    # Add other configuration options as needed
    # ...

    tags = {
        Name = "MyEC2Instance"
    }
}

# Define outputs
output "instance_id" {
    description = "EC2 instance ID"
    value       = aws_instance.ec2_instance.id
}

output "public_ip" {
    description = "Public IP address of the EC2 instance"
    value       = aws_instance.ec2_instance.public_ip
}