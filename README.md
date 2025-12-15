Linux: beep must be installed

sudo apt install beep

Execute with:
sudo sh ping_check.sh

Windows: for first-time users, run the following in PowerShell:

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

Execute with:
.\ping_check.ps1

Mac: sox must be installed

brew install sox

Execute with:
sudo sh ping_check_mac.sh

Pings 8.8.8.8 every 5 seconds, if ping fails, play a tone of 882hz in default audio device every 200ms until connection is reived.
