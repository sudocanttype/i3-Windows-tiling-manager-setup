# i3-Windows-tiling-manager-setup
My current setup for a i3 using polybar and i3lock-color. <br/>
<img alt='rice 1' src='https://github.com/sudocanttype/i3-Windows-tiling-manager-setup/blob/main/img/image1.png'>
<img alt='rice 2' src='https://github.com/sudocanttype/i3-Windows-tiling-manager-setup/blob/main/img/image2.png'>
<img alt='Lock screen' src='https://github.com/sudocanttype/i3-Windows-tiling-manager-setup/blob/main/img/image-locked.png'>

## Prerequisites
  * [i3lock-color](https://github.com/Raymo111/i3lock-color)
  * [i3-gaps WM](https://github.com/Airblader/i3)
  * UbuntuMono Nerd Font Mono **AND** UbuntuMono Nerd Font. [Choose the fonts from here](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/UbuntuMono/Regular/complete)
  * rofi
  * feh
  * python dotenv
  * xautolock
  * picom (nice, but not necessary)
  * Starship
  * NetworkManager (and nm-connection-editor)
  * fortune
  * [thefuck](https://github.com/nvbn/thefuck)
  * exa
  * terminator
  * Pipewire
  * Easyeffects
  * Flameshot

## Installation
Copy the i3 folder into your home dir, then make it hidden by appending a period. It should look like ```$HOME/.i3/the-files```. Then, copy the polybar folder into ```$HOME/.config```. If it already exists, delete the base polybar folder. Thats it! <br/><br/>
NOTE: In order for the weather polybar module to work, you must grab an api key [here](https://openweathermap.org/price). The free plan should be fine. Then, enter ```$HOME/.config/polybar``` and create a .env file. Edit the .env file, and add ```API="your-api-key-here"``` <br/>
NOTE 2: For the background, feh looks in ```$HOME/Pictures/Wallpapers```, so place your wallpapers in there.
