# Programs
thefuck --alias | source

set BRUH $PWD
# Aliases
alias linuxmasterrace="neofetch | lolcat"
alias ..="cd .."
alias manage="python manage.py"
alias sact=". venv/bin/activate.fish"
alias unfuck_wifi="sudo systemctl restart NetworkManager "
alias ls=exa

fish_vi_key_bindings 
#bindings
bind \cd forward-word
bind \cf accept-autosuggestion
bind -M insert \cd forward-word
bind -M insert \cf accept-autosuggestion


starship init fish | source

set -gx EDITOR nvim

set -gx CRYPTOGRAPHY_OPENSSL_NO_LEGACY 1

