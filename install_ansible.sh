#!/bin/bash

# Update Ubuntu and upgrade installed packages
echo "Updating the system... buckle up, it's a wild ride!"
sudo apt update && sudo apt upgrade -y
sleep 5

# Ensure Python 3 is installed
echo "Making sure Python 3 is here, because who doesn't love Python?"
if ! command -v python3 &> /dev/null
then
    echo "Python 3 isn't installed. Let me fix that real quick!"
    sudo apt install python3 -y
else
    echo "Python 3 is already installed. Python is pleased."
fi
sleep 5

# Install python3-pip
echo "Installing pip for Python 3... because packages need a pipeline!"
sudo apt install python3-pip -y
echo "Pip has been installed! The pipeline is ready to flow."
sleep 5

# Install Ansible via pip3
echo "Let's get Ansible. We need a tool that obeys us."
sudo pip3 install ansible
echo "Ansible is now your command-line servant. But no need to be bossy."
sleep 5

# Install pan-os-python package
echo "Time to bring in some specialized tools with pan-os-python."
sudo pip3 install pan-os-python==1.8.0
echo "pan-os-python installed! It now talks to firewalls... not like they listen."
sleep 5

# Install pan-python package
echo "Next up, pan-python. Firewalls just love more Python."
sudo pip3 install pan-python==0.17.0
echo "pan-python installed! You now speak firewall... kinda."
sleep 5

# Install xmltodict package
echo "XML to dict? Yeah, we're converting old school hieroglyphics now."
sudo pip3 install xmltodict==0.12.0
echo "xmltodict installed! Because XML is just JSON with an inferiority complex."
sleep 5

# List installed packages to verify pan-os-python and pan-python
echo "Let's see what Python packages we’ve gathered so far..."
pip3 list | grep pan
echo "Looks like everything's in place. The firewall speaks Python now."
sleep 5

# Install Ansible Palo Alto collection
echo "Now we need the Palo Alto Ansible collection. Almost there!"
ansible-galaxy collection install paloaltonetworks.panos
echo "Palo Alto Networks collection installed! Firewalls, meet your new Ansible overlord."
sleep 5

# Verify Palo Alto collection installation
echo "Let's make sure the collection is where it should be..."
ansible-galaxy collection list | grep panos
echo "Palo Alto Ansible collection is locked and loaded!"
sleep 5

# Final message
echo "We're ready to start configuring with Ansible! Time to make those firewalls dance!"
