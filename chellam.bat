@echo off
set current_dir=%cd%
cd C:\Program Files\Oracle\VirtualBox
VBoxManage startvm "Ubuntu" --type gui
cd %current_dir%