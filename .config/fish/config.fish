# Variables
set -gx EDITOR code
set -gx FZF_DEFAULT_COMMAND fd --type f

# ASDF
source /usr/local/opt/asdf/asdf.fish

# Hub
eval (hub alias -s)

# 1Password
# eval (op signin my)

# Erlang/Elixir
set -gx ERL_AFLAGS "-kernel shell_history enabled"

# GPG stuff
export GPG_TTY=(tty)
export SSH_AUTH_SOCK=(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent


# Python
set -gx WORKON_HOME $HOME/.virtualenvs
mkdir -p $WORKON_HOME
source (virtualenvwrapper.sh)

# Devpi certs
export REQUESTS_CA_BUNDLE=$HOME/.certs/certbundle.pem

# Nix
fenv source /Users/ethan/.nix-profile/etc/profile.d/nix.sh
set -U fish_user_paths /Users/ethan/.asdf/installs/poetry/1.0.5/bin /Users/ethan/.fzf/bin /run/current-system/sw/bin
