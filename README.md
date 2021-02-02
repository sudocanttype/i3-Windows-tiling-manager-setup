# i3-Windows-tiling-manager-setup
My current setup for a i3 using polybar and i3lock-color

## Requirements
  * [Polybar](https://github.com/polybar/polybar) and its dependencies
  * [i3lock-color](https://github.com/Raymo111/i3lock-color)
  * [i3 WM](https://i3wm.org/downloads/)
  * UbuntuMono Nerd Font Mono **AND** UbuntuMono Nerd Font. [Choose the fonts from here](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/UbuntuMono/Regular/complete)
  * feh
  * python dotenv
  * xautolock
  * Compton (nice, but not necessary)

## Installation
Copy the i3 folder into your home dir, then make it hidden by appending a period. It should look like ```$HOME/.i3/the-files```. Then, copy the polybar folder into ```$HOME/.config```. If it already exists, delete the base polybar folder. Thats it! <br/><br/>
NOTE: In order for the weather polybar module to work, you must grab an api key [here](https://openweathermap.org/price). The free plan should be fine. Then, enter ```$HOME/.config/polybar``` and create a .env file. Edit the .env file, and add ```API="your-api-key-here"```
