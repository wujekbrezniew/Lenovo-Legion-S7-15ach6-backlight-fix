# What is it
This is systemd service to fix backlight control of Lenovo Legion s7 15ach6 laptop when Nvidia driver is installed and runned in on-demand prime mode. This should work in nvidia prime mode too as main GPU is Nvidia in that state. This service works in systemd userspace by manipulating xrandr --brightness parameter.

# How to install
`cp ls7_15ach6_backlight.s* ~/.config/systemd/user/` <br />
`sudo chmod 755 ~/.config/systemd/user/ls7_15ach6_backlight.s*` <br />
`sudo systemd --user enable ls7_15ach6_backlight` <br />
`sudo systemd --user start ls7_15ach6_backlight` <br />

# How to remove
`sudo systemd --user disable ls7_15ach6_backlight` <br />
`sudo rm ~/.config/systemd/user/ls7_15ach6_backlight.s*`
