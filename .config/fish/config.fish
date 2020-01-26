set -g theme_nerd_fonts yes
set PATH $PATH $HOME/.poetry/bin
set PATH $PATH $HOME/zija/.local/bin
set PATH $PATH $HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH
source $HOME/.poetry/env
thefuck --alias | source
set EDITOR nvim
set FZF_COMPLETE 2
set SPACEFISH_PROMPT_DEFAULT_PREFIX
set SPACEFISH_PACKAGE_SHOW false
set SPACEFISH_VENV_SYMBOL "🐍 "
set SPACEFISH_PYENV_SHOW false
set SPACEFISH_PYENV_SYMBOL
set SPACEFISH_PYENV_COLOR green
set SPACEFISH_EXEC_TIME_SHOW false
set SPACEFISH_DIR_TRUNC_REPO false
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
. (pyenv init -|psub)
. (pyenv virtualenv-init -|psub)
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -x DOTNET_ROOT /opt/dotnet

register-python-argcomplete --shell fish pipx | .
# source ~/.asdf/asdf.fish

# opam configuration
source /home/zija/.opam/opam-init/init.fish >/dev/null 2>/dev/null or true
direnv hook fish | source
# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end