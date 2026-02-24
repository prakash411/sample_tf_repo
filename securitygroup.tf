resource "aws_security_group" "web-sg" {
    name = "web-sg"
    description = "this sg allow for web servers"
    ingress {
        protocol = "TCP"
        from_port = "3389"
        to_port = "3389"
        cidr_blocks = [ "0.0.0.0/0" ]
        description = "to allow instance to connect to RDP"
    }  
    egress {
        protocol = "ALL"
        from_port = "0"
        to_port = "0"
        cidr_blocks = ["0.0.0.0/0"]
    }
}