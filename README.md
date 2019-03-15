# MobaXtermAzureCLI

A simple wrapper for integrating AzureCLI in [MobaXterm](https://mobaxterm.mobatek.net/)

## Overview

As a former Linux Admin I like working with the Cygwin version from [MobaXterm](https://mobaxterm.mobatek.net/) but unfortunately there is no [AzureCLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) integration for apt-cyg.

To enable [AzureCLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) in MobaXterm we can use the Windows Version of Azure CLI and execute it via cmd.exe from [MobaXterm](https://mobaxterm.mobatek.net/). This will extend the Windows [AzureCLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) to the capabilities of [MobaXterm](https://mobaxterm.mobatek.net/).

All you need is a simple [wrapper script](AzureCli.sh) which will forward your shell commands directly to the AzureCLI python of the Windows installation.

## Prerequisites 

You need to have the following things installed on your system before proceeding:

* [AzureCLI for Windows](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
* Any version of [MobaXterm](https://mobaxterm.mobatek.net/)

## Installation  

Open [MobaXterm](https://mobaxterm.mobatek.net/) and execute the following command in your MobaCygwin command prompt:

```bash
curl --insecure https://raw.githubusercontent.com/abeckDev/MobaXtermAzureCLI/master/install.sh | bash
```

After the installer finished you can use ```az``` directly from MobaXterm