# Documentation

## Overview

This repository contains a set of Bash scripts designed for network diagnostics and troubleshooting. Each script serves a specific purpose, from checking connectivity to inspecting DNS and open ports.

## Script Details

### 1. **Ping Test (02_ping_test.sh)**

This script is used to test network connectivity by sending ICMP ping requests to the target host. It's useful to determine whether a remote host is reachable.

- **Input:** Target domain or IP address
- **Output:** Success or failure message based on the response from the target.
- **Dependencies:** `ping` utility (usually pre-installed on most systems).

### 2. **DNS Lookup (03_dns_lookup.sh)**

This script performs a DNS query using `dig` to retrieve the IP addresses associated with a given domain name.

- **Input:** Domain name (e.g., google.com)
- **Output:** The IP addresses associated with the domain.
- **Dependencies:** `dig` command (installable via `sudo apt install dnsutils`).

### 3. **Port Check (04_check_ports.sh)**

This script checks if specific ports are open on a given IP address using the `nc` (Netcat) utility.

- **Input:** Target IP address and a list of ports.
- **Output:** Message for each port showing whether it is open or closed.
- **Dependencies:** `nc` (Netcat).

