# Variables
set -gx EDITOR code

# ASDF
source /usr/local/opt/asdf/asdf.fish

# Hub
eval (hub alias -s)

# 1Password
# eval (op signin my)

# Erlang/Elixir
set -gx ERL_AFLAGS "-kernel shell_history enabled"
