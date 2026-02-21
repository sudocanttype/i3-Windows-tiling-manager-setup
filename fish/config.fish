# Programs
thefuck --alias | source

set BRUH $PWD
# Aliases
alias ..="cd .."
alias manage="python manage.py"
alias sact=". venv/bin/activate.fish"
alias unfuck_wifi="sudo systemctl restart NetworkManager "
alias ls=exa

#bindings
bind \cd forward-word


starship init fish | source
fish_ssh_agent

set -gx EDITOR nvim

set -gx CRYPTOGRAPHY_OPENSSL_NO_LEGACY 1

alias activate_conda="eval /opt/miniconda3/bin/conda 'shell.fish' 'hook' $argv | source"

fish_vi_key_bindings

fish_ssh_agent
