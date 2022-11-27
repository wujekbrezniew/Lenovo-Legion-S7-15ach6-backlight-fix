# What is it
This is systemd service to fix backlight control of Lenovo Legion s7 15ach6 laptop when Nvidia driver is installed and runned in on-demand prime mode. This should work in nvidia prime mode too as main GPU is Nvidia in that state.

# How to install
`sudo cp ls7_15ach6_backlight.s*`
`sudo chmod 755 ls7_15ach6_backlight.s*`
`sudo systemd enable ls7_15ach6_backlight`
`sudo systemd start ls7_15ach6_backlight`

# How to remove
`sudo systemd disable ls7_15ach6_backlight`
`sudo rm 755 ls7_15ach6_backlight.s*`
