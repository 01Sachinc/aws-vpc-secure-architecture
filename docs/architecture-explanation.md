# Architecture Explanation

The AWS VPC Secure Application Architecture is designed to provide a highly secure environment for a web application and its database.

## Design Philosophy

The primary goal is **security through isolation**. By separating the application tier and the data tier into different subnets, we can strictly control how traffic enters and exits each layer.

## Key Components

### Networking Isolation

- **VPC (10.0.0.0/24)**: A dedicated private network space in the `ap-south-1` region.
- **Public Subnet (10.0.0.0/25)**: Hosts resources that need direct internet access, such as the Application Server.
- **Private Subnet (10.0.0.128/25)**: Hosts sensitive resources like the Database Server, which should never be directly accessible from the internet.

### Connectivity

- **Internet Gateway (IGW)**: Provides the public subnet with access to the internet.
- **NAT Gateway**: Resides in the public subnet and allows instances in the private subnet to initiate outbound traffic (e.g., for security patches) without allowing unsolicited inbound traffic.

### Routing

- **Public Route Table**: Has a default route (`0.0.0.0/0`) pointing to the IGW.
- **Private Route Table**: Has a default route (`0.0.0.0/0`) pointing to the NAT Gateway.
