#escape urls
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

#zplug
export ZPLUG_HOME=~/.zplug
source ~/.zplug/init.zsh

# Check for uninstalled plugins.
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "lib/compfix", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/sublime", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh

#zsh-users
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions", depth:1
zplug "zsh-users/zsh-autosuggestions"

#other
zplug "RobSis/zsh-completion-generator"

zplug load

# ZSH
setopt histignorespace

# Aliases
alias edit="$EDITOR"
alias sudo="sudo "
alias wine="LC_ALL=ja_JP.UTF-8 wine"
alias imv="imv -s -b checks"
alias aurrepo='repoctl update'
alias updateaur='aur sync -u -c --no-view'
alias updatemirrorlist='sudo reflector --protocol https --latest 30 --number 20 --sort rate --save /etc/pacman.d/mirrorlist'
eval $(thefuck --alias)
alias ls=lsd
alias l='ls -l'
alias la='ls -la'
alias lla='ls -la'
alias lt='ls --tree'
disable -r time

#functions
twitch(){ streamlink twitch.tv/$1 best; }
aurgit(){aur sync -c --no-ver --no-view $* -f;}

# added by travis gem
[ -f /home/flat/.travis/travis.sh ] && source /home/flat/.travis/travis.sh

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history
bindkey "^[[3~" delete-char
bindkey "^[[2~" quoted-insert

if zplug check zsh-users/zsh-history-substring-search; then
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down
fi

eval "$(starship init zsh)"
