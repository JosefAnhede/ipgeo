# ipgeo
**ipgeo [-g/--gmaps] {IP}**

## Summary
Command line tool for finding geo-location of IP adresses. Works on Linux and MacOS.
Using the free and open API http://geoiplookup.net/xml-api/

## Options
**{IP}** REQUIRED, The IP to lookup <br />
**-g/--gmaps** Output a Google Maps link to the IPs coordinates

## Installation
### MacOS
To use ipgeo on MacOS you need to source it in your shell of choice. This is most likely Z Shell or Bash. To check which you're using: open the terminal and examine the window name, if it says 'zsh' then you're using Z Shell, otherwise it's Bash.
#### Z Shell
To source ipgeo on Z Shell you need to append a line on your 'zshrc' file. This file loads each time you start your shell and will as such source the command every time you open a new terminal window. **To do this, add the line** `source {PATH TO IPGEO FILE}/ipgeo.sh` **to the bottom of zshrc located at** `/etc/zshrc`.

#### Bash
To source ipgeo on Bash you need to append a line on your 'bashrc' file. This file loads each time you start your shell and will as such source the command every time you open a new terminal window. **To do this, add the line** `source {PATH TO IPGEO FILE}/ipgeo.sh` **to the bottom of bashrc located at** `/etc/bashrc`.
