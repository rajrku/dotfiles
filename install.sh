#!/bin/bash

exec > >(tee -i $HOME/dotfiles_install.log)
exec 2>&1
set -x

cat $(pwd)/env/.bashrc >> $HOME/.bashrc
ln -s $(pwd)/env/startup.sh $HOME/startup.sh
ln -s $(pwd)/env/status.sh $HOME/status.sh
ln -s $(pwd)/env/deployRunnerBinaries.sh $HOME/deployRunnerBinaries.sh
mkdir -p $HOME/.config/powershell
cp $(pwd)/env/Microsoft.PowerShell_profile.ps1 $HOME/.config/powershell/Microsoft.PowerShell_profile.ps1
