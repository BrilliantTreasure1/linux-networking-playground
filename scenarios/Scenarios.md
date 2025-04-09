# Scenarios

## Scenario 1: Checking if a website is reachable

**Problem:** You want to check if a specific website (e.g., google.com) is reachable from your machine.

- **Solution:** Run the `02_ping_test.sh` script to ping google.com.

```bash
./scripts/02_ping_test.sh google.com

    Expected Output:

    ✅ Connectivity to google.com is successful!

Scenario 2: Performing a DNS Lookup

Problem: You need to find the IP address associated with a domain name.

    Solution: Use the 03_dns_lookup.sh script to perform a DNS lookup for a domain like github.com.

./scripts/03_dns_lookup.sh github.com

    Expected Output:

    140.82.113.3

Scenario 3: Checking open ports on a remote server

Problem: You want to check if certain ports (e.g., HTTP, HTTPS, and SSH) are open on a remote server.

    Solution: Run the 04_check_ports.sh script with the target IP and a list of ports.

./scripts/04_check_ports.sh 192.168.1.1 "80 443 22"

    Expected Output:

    ✅ Port 80 is open on 192.168.1.1!
    ❌ Port 443 is closed on 192.168.1.1.
    ✅ Port 22 is open on 192.168.1.1!

Scenario 4: Diagnosing network connectivity issues

Problem: You are experiencing network issues and want to identify whether the issue is with the DNS, port availability, or connectivity.

    Solution:

        Use 02_ping_test.sh to check connectivity.

        Use 03_dns_lookup.sh to check DNS resolution.

        Use 04_check_ports.sh to verify that the necessary ports are open on the server.

Example:

# Check connectivity
./scripts/02_ping_test.sh google.com

# DNS Lookup
./scripts/03_dns_lookup.sh github.com

# Port Check on server
./scripts/04_check_ports.sh 192.168.1.1 "80 443 22"


