REM This scrimpt installs the pre-reqs for running DMLA
REM Note each phase requires a new shell to pick up the env variables from the previous command

REM Phase 0
echo "Reboot and make sure Virtualize Intel VT-x is enabled"

REM Phase 1
echo "Install Chocolatey Package Manager" && @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Phase 2
echo "It requires a new command prompt to run the remaing commands:"
echo "Install Vagrant v1.9.5 or later" && cinst vagrant -v 1.9.5 -yf 
echo "Install putty v0.69 or later " && cinst putty -v 0.69 -yf 
echo "Install virtualbox v5.1.22 or later " && cinst virtualbox -v 5.1.22 -yf

REM Phase 3
echo "It requires a new command prompt to run the remaing commands:"
vagrant plugin install vagrant-cachier  
vagrant plugin install vagrant-multi-putty

