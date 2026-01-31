provider "aws"{
    region = var.region
}

# Create an EC2 instance, aws_instance is the resource type for creating ec2 instances in aws
# The name "myec2" is an arbitrary name we give to this resource for referencing it later
# This myec2 will not be the actual name of the instance in aws console
resource "aws_instance" "myec2"{
    ami          = var.ami # Ami is like amazon machine image (os image for ec2)
    instance_type = var.instance_type # It is what type of instance we want to create what will be its configuration, like cpu, memory etc.

    tags = {
        Name = "MyFirstEC2Instance" # Tag is like a label we can give to our instance for identification, this name will appear in aws console
    }
}