# Vagrant workspace

My personal Vagrant workspace with VirtualBox provider. Used only for development.

## Requirements

* Vagrant + VirtualBox + Git (Latest versions. Always. 😎)

## Workspace

* Operating system
  * Lubuntu Desktop 18.04 LTS (64 bits)
* Browsers
  * Google Chrome
* Code editors
  * Visual Studio Code
* Others
  * VirtualBox Guest Additions
  * Timezone and keyboard configured for Brazil (ABNT2)

## Usage

Open your `bash` (in Linux) or `cmd` (in Windows) and execute these commands below:

```bash
# Clone the repository.
git clone https://github.com/pedrofurtado/vagrant-workspace && cd vagrant-workspace

# Define VM configurations (example values).
echo VAGRANT_WORKSPACE_DISK_SIZE='100GB'>>.env
echo VAGRANT_WORKSPACE_MEMORY_IN_MB='8192'>>.env
echo VAGRANT_WORKSPACE_CPUS='2'>>.env
echo VAGRANT_WORKSPACE_MONITORS='2'>>.env
echo VAGRANT_WORKSPACE_VIDEO_MEMORY_IN_MB='50'>>.env

# Build and execute the VM.
vagrant up && vagrant reload
```

After all commands, login in VirtualBox VM GUI as:

* User: vagrant
* Password: vagrant

Enjoy!
