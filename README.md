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
