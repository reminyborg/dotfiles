# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/remi/.oh-my-zsh

export PATH="$PATH:$HOME/repos/tools/flutter/bin"

alias python="python3"
alias pip="pip3"
alias vim="nvim"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git,
  zsh-syntax-highlighting
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

autoload -U promptinit; promptinit
prompt pure

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -v
bindkey '^r' history-incremental-search-backward
bindkey '^P' up-history
bindkey '^N' down-history
export KEYTIMEOUT=1

VIM_PROMPT="❯"
PROMPT='%(?.%F{magenta}.%F{red})${VIM_PROMPT}%f '

prompt_pure_update_vim_prompt() {
  zle || {
    print "error: pure_update_vim_prompt must be called when zle is active"
    return 1
  }
  VIM_PROMPT=${${KEYMAP/vicmd/❮}/(main|viins)/❯}
  zle .reset-prompt
}

function zle-line-init zle-keymap-select { 
  prompt_pure_update_vim_prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
