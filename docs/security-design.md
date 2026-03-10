# Security Design

Secure separation is enforced at both the network and instance levels.

## Security Groups (Stateful Firewalls)

### 1. Application Security Group (`app-sg`)

- **Ingress**:
  - Port 80 (HTTP): Allowed from anywhere (`0.0.0.0/0`)
  - Port 443 (HTTPS): Allowed from anywhere (`0.0.0.0/0`)
  - Port 22 (SSH): Allowed for admin access.
- **Egress**:
  - All traffic allowed.

### 2. Database Security Group (`db-sg`)

- **Ingress**:
  - Port 3306 (MySQL): **Only allowed from the Application Security Group (`app-sg`)**. This ensures that the database is protected even if it were accidentally placed in a public subnet.
- **Egress**:
  - All traffic allowed (needed for NAT Gateway connectivity).

## Network Access Control

- The database is in a **Private Subnet**, meaning it has no Public IP and no route to the Internet Gateway. It can only be reached via the internal VPC network.
