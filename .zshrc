#Oh My Posh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
eval "$(oh-my-posh init zsh  --config ~/.config/ohmyposh/nightowl.omp.json)"
# eval "$(oh-my-posh init zsh  --config ~/.config/ohmyposh/clean-detailed.omp.json)"
fi
 # eval "$(oh-my-posh init zsh)"
 #

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(/opt/homebrew/bin/brew shellenv)"
# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma-continuum/history-search-multi-word

# Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light Aloxaf/fzf-tab

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion with lowercase
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# zstyle ':fzf-tab:complete:__zoxide_z' fzf-preview 'ls --color $realpath'

zinit snippet OMZP::git

alias ls='ls --color'
# alias nvim='nvim'
alias c='clear'

# eval "$(fzf --zsh)"
source <(fzf --zsh)
# eval "$(zoxide init --cmd cd zsh)"
autoload -Uz compinit && compinit
zinit cdreplay -q
# eval "$(starship init zsh)"
#
#




export NODE_PATH=`which node`
export NVM_DIR=~/.nvm


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


if command apt > /dev/null; then
    # source $ZSH_CUSTOM/os/debian.zsh
   echo 'Debian'

elif command systemctl > /dev/null; then
    # source $ZSH_CUSTOM/os/systemd.zsh
    echo 'Systemd'

elif command freebsd-version > /dev/null; then
    # source $ZSH_CUSTOM/os/freebsd.zsh
    echo 'FreeBSD'

elif [[ `uname` == "Darwin" ]]; then
  echo 'Mac OS'
    # source $ZSH_CUSTOM/os/mac.zsh
    # pnpm
    export PNPM_HOME="/Users/doitalldev/Library/pnpm"
    case ":$PATH:" in
      *":$PNPM_HOME:"*) ;;
      *) export PATH="$PNPM_HOME:$PATH" ;;
    esac
    # pnpm end

    

    FPATH=~/.rbenv/completions:"$FPATH"

    export PATH="/usr/local/opt/ruby/bin:$PATH"
    eval "$(rbenv init - zsh)"
elif command kubectl > /dev/null; then
    # source $ZSH_CUSTOM/os/kubernetes.zsh

else
    echo 'Unknown OS!'
fi

# bun completions
[ -s "/Users/doitalldev/.bun/_bun" ] && source "/Users/doitalldev/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

. "$HOME/.local/bin/env"

# pnpm
export PNPM_HOME="/Users/doitalldev/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH=~/.npm-global/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

PATH=~/.console-ninja/.bin:$PATH
export PATH=~/.npm-global/bin:$PATH

# opencode
export PATH=/Users/doitalldev/.opencode/bin:$PATH
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin


export PATH="$HOME/go/bin:$PATH"
