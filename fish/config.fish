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

#bindings
bind \cd forward-word


starship init fish | source

set -gx EDITOR nvim
