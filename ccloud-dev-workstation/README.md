# Confluent Cloud Simulated Developer Environment

## Prerequisites

### Mac

1. Java 1.8+
2. Docker Desktop for Mac 

### Windows

1. WSL (Windows Subsystem Linux):
 * [How to install WSL + Ubuntu](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/) 
2. Docker Desktop for Windows
 * [Installing Docker Dekstop for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)
3. WSL Java Env
 * `sudo apt-get install openjdk-11-jdk`
 * **Note:** The contained script [install_deps.sh](windows_wsl/install_deps.sh) will install Java for you
4. WSL Docker Dependencies
 * [Installing Docker & Docker Compose](https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly)
 * **Note:** The contained script [install_deps.sh](windows_wsl/install_deps.sh) will install the needed dependencies and WSL adjustments.
   You will still be required however to enable TCP access to docker as described in the link above.

## Initial Setup

Provided with this package is the `init.sh` script. 
You will need to run this script after you have completed the above prereqs.
This script will setup the needed Kafka Connect Connectors as well as configured the needed connector for your workspace. 

## Common Commands

### Starting, Restarting and Stopping

**Start**

`./start.sh`

**Restart**

`./start.sh`

**Stop**

`./stop.sh`

### Producing Sample Data

