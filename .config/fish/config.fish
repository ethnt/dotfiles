set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8

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
export KEYID=0x1262A5538EE9EE90
gpgconf --launch gpg-agent

# Nix stuff
fenv source /Users/ethan/.nix-profile/etc/profile.d/nix.sh

export NIX_PATH=darwin=$HOME/.nix-defexpr/darwin:darwin-config=$HOME/.nixpkgs/darwin-configuration.nix:$NIX_PATH

# if we haven't sourced the general config, do it
if not set -q __fish_nix_darwin_general_config_sourced
  set fish_function_path /nix/store/d1kzfbzwypcyhzaxcachd5i1b4cv5pdx-fish-foreign-env-git-20200209/share/fish-foreign-env/functions $fish_function_path
  fenv source /etc/fish/foreign-env/shellInit > /dev/null
  set -e fish_function_path[1]



  # and leave a note so we don't source this config section again from
  # this very shell (children will source the general config anew)
  set -g __fish_nix_darwin_general_config_sourced 1
end

# if we haven't sourced the login config, do it
status --is-login; and not set -q __fish_nix_darwin_login_config_sourced
and begin
  set fish_function_path /nix/store/d1kzfbzwypcyhzaxcachd5i1b4cv5pdx-fish-foreign-env-git-20200209/share/fish-foreign-env/functions $fish_function_path
  fenv source /etc/fish/foreign-env/loginShellInit > /dev/null
  set -e fish_function_path[1]



  # and leave a note so we don't source this config section again from
  # this very shell (children will source the general config anew)
  set -g __fish_nix_darwin_login_config_sourced 1
end

# if we haven't sourced the interactive config, do it
status --is-interactive; and not set -q __fish_nix_darwin_interactive_config_sourced
and begin



  set fish_function_path /nix/store/d1kzfbzwypcyhzaxcachd5i1b4cv5pdx-fish-foreign-env-git-20200209/share/fish-foreign-env/functions $fish_function_path
  fenv source /etc/fish/foreign-env/interactiveShellInit > /dev/null
  set -e fish_function_path[1]




  # and leave a note so we don't source this config section again from
  # this very shell (children will source the general config anew,
  # allowing configuration changes in, e.g, aliases, to propagate)
  set -g __fish_nix_darwin_interactive_config_sourced 1
end
