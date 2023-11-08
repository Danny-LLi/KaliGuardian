#!/bin/bash

# Make sure to execute this script with root privileges.
if [ $(id -u) -ne 0 ]; then
	echo "Please run this script as the root user."
	exit 1
fi

# Update the package list.
apt-get update

# Check if the operating system is Kali Linux and install necessary packages.
if [[ -n $(cat /etc/os-release | grep kali) ]]; then
	apt-get install libservlet3.1-java libecj-java libgetopt-java i2p i2p-router libjbigi-jni libjetty9-java # Install i2p and other required dependencies.
	apt-get -f install # Resolve any potential package conflicts.
fi

# Install keyring and other essential packages.
apt-get install -y i2p-keyring # This ensures you receive updates to the repository's GPG key.
apt-get install -y secure-delete tor i2p # Install necessary dependencies, just to be safe.

# Configure and install the .deb package.
dpkg-deb -b KaliGuardian_deb_src/ kaliguardian.deb # Build the Debian package.
dpkg -i kaliguardian.deb || (apt-get -f install && dpkg -i kaliguardian.deb) # Automatically install required packages if needed.

exit 0

