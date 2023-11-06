# KaliGuardian

## Overview

Kaliguardian is a powerful network anonymization tool designed to protect your online privacy and security by making the Tor network your default network gateway and routing the traffic from your machine to the Internet through the Tor network. Also, it has unique features and improvements from the previous known anonymization tools.


## Features

- **Private Internet Access DNS Servers**: KaliGuardian replaces FrozenDNS with Private Internet Access DNS servers for enhanced privacy and security.

- **Compatibility with Kali Linux**: KaliGuardian is specifically designed and rigorously tested on a Kali-rolling AMD64 system, ensuring optimal compatibility and performance.

- **Easy Installation**: This repository provides options for installation, including compiling it into a deb package and using the installer for a hassle-free setup.

- **SSH Cache Clearance**: Be aware that executing actions related to KaliGuardian will result in the complete clearance of the system cache, including any active SSH tunnels or sessions.

## Installation

To install KaliGuardian on your Kali Linux system, follow these steps:

### Option 1: Compilation into a DEB Package

1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/Danny-LLi/KaliGuardian.git
   ```

2. Navigate to the repository directory.
   ```bash
   cd KaliGuardian
   ```

3. Compile the source code into a DEB package.
   ```bash
   dpkg-deb -b KaliGuardian_deb_src/ kaliguardian.deb 
   ```

4. Install.
      ```bash
   dpkg -i kaliguardian.deb || (apt-get -f install && dpkg -i kaliguardian.deb) 
   ```
  
   

### Option 2: Using the Installer (Recommended)

1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/your-username/KaliGuardian-Enhancement.git
   ```

2. Navigate to the repository directory.
   ```bash
   cd KaliGuardian
   ```

3. Run the installer script.
   ```bash
   chmod +x installer.sh
   ./installer.sh
   ```

### Important Note

- **System Cache Clearance**: Executing actions related to KaliGuardian will result in the complete clearance of the system cache, including active SSH tunnels or sessions. Please ensure that you have saved your work and disconnected from any critical processes before proceeding.

## License

This project is licensed under the GNU General Public License v3.0.

---

**Disclaimer**: Use this tool at your own risk, and be responsible for its usage.



### Usage
 kaliguardian {start|stop|restart|change|status}

- `start`: Start system-wide anonymous tunneling under TOR proxy through iptables.
- `stop`: Reset original iptables settings and return to clear navigation.
- `restart`: Combines "stop" and "start" options.
- `change`: Changes identity by restarting TOR.
- `status`: Check if KaliGuardian is working properly.

**I2P Related Features**:
- `i2pstart`: Start I2P services.
- `i2pstop`: Stop I2P services.


### Pandora
Pandora automatically overwrites the RAM when the system is shutting down. You can also run Pandora manually:

```bash
./installer.sh
pandora bomb
