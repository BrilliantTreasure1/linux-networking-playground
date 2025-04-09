# Network Utilities - Bash Scripts

A collection of useful bash scripts for network management and troubleshooting. These scripts can be used to test connectivity, perform DNS lookups, check open ports, and more.

---

## Scripts

### 1. **Ping Test (02_ping_test.sh)**
   - **Description:** Tests the connectivity to a given IP address or domain.
   - **Usage:**
     ```bash
     ./scripts/02_ping_test.sh <target_ip_or_domain>
     ```
   - **Example:**
     ```bash
     ./scripts/02_ping_test.sh google.com
     ```

### 2. **DNS Lookup (03_dns_lookup.sh)**
   - **Description:** Performs a DNS lookup for a given domain and returns its IP addresses.
   - **Usage:**
     ```bash
     ./scripts/03_dns_lookup.sh <domain_name>
     ```
   - **Example:**
     ```bash
     ./scripts/03_dns_lookup.sh github.com
     ```

### 3. **Port Check (04_check_ports.sh)**
   - **Description:** Checks if specified ports are open on a given IP address.
   - **Usage:**
     ```bash
     ./scripts/04_check_ports.sh <target_ip> "<port_list>"
     ```
   - **Example:**
     ```bash
     ./scripts/04_check_ports.sh 192.168.1.1 "80 443 3306"
     ```

---

## Requirements

- **Operating System:** Linux or macOS (for Bash scripting)
- **Tools:** 
  - `ping`: Available by default on most systems.
  - `dig`: For DNS lookups. Install with `sudo apt install dnsutils` on Ubuntu/Debian systems.
  - `nc` (Netcat): For port checking. Install with `sudo apt install netcat` on Ubuntu/Debian systems.

---

## How to Use

1. **Clone this repository:**
   ```bash
   git clone https://github.com/your-username/network-utils.git
   cd network-utils

    Make the scripts executable:

chmod +x scripts/*.sh

Run the scripts:

    Example:

./scripts/02_ping_test.sh google.com
./scripts/03_dns_lookup.sh github.com
./scripts/04_check_ports.sh 192.168.1.1 "80 443 22"

