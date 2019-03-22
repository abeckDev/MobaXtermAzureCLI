#!/bin/bash

# Check if Windows AzureCLI is installed
echo "Checking prerequisites"
if [ -e /mnt/c/Program\ Files\ \(x86\)/Microsoft\ SDKs/Azure/CLI2/python.exe ]
then
    echo "Found Windows Azure CLI proceed."
else
    echo "Windows Azure CLI not found. Please install it first!"
    echo "See: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest for further assistance."
    exit 1
fi


# Download AzureCLI Wrapper
echo "Downloading AzureCLI Wrapper from GitHub"
curl --insecure https://raw.githubusercontent.com/abeckDev/MobaXtermAzureCLI/master/AzureCli.sh --output /usr/bin/az

# Making it executable
chmod +x /usr/bin/az

# Verifying installation
echo "Installation done"
echo "Verifying installation"

/usr/bin/az > /dev/null
if [ $? -eq 0 ]
then
    echo "AzureCLI wrapper for MobaXterm successfuly installed!"
    exit 0
else
    echo "Could not verify installation"
    echo "Check following error:"
    /usr/bin/az
    exit 1
fi
