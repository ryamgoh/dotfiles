# How to use Stow
Choose a directory you want to stow
cd into this dotfiles/
then stow a directory that matches the file path if you were to edit it yourself
for eg. stow nvim/
this should copy over the contents inside and put it into a pointer
nvim/.config/nvim/.......

This should be it !

---


Commands for Auto CPU Freq and TLP UI

sudo nano /etc/kernel/cmdline 
- Add amd_pstate=passive/active (active not stable)

sudo reinstall-kernels 
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_driver
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq


sudo nano /etc/auto-cpufreq.conf
sudo nano /etc/tlp.conf

sudo systemctl restart auto-cpufreq.service
sudo systemctl disable tlp.service 


## Packages to install
stow zsh fzf zoxide




Add here if
amd_pstate=passive initcall_blacklist=acpi_cpufreq_init amd_pstate.shared_mem=1
