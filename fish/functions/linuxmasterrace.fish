# Defined in - @ line 1
function linuxmasterrace --wraps='neofetch --disable cpu gpu memory resolution --color_blocks off | lolcat' --description 'alias linuxmasterrace=neofetch --disable cpu gpu memory resolution --color_blocks off | lolcat'
  neofetch --disable cpu gpu memory resolution --color_blocks off | lolcat $argv;
end
