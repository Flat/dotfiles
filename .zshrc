#escape urls
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

#Theme variables
BULLETTRAIN_PROMPT_ORDER=(
  context
  dir
  git
)

BULLETTRAIN_PROMPT_CHAR="⚸ "
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_TIME_SHOW=false

BULLETTRAIN_CONTEXT_SHOW=true

BULLETTRAIN_DIR_BG=magenta
BULLETTRAIN_DIR_FG=white

BULLETTRAIN_GIT_BG=blue

BULLETTRAIN_STATUS_EXIT_SHOW=true

custom_git_prompt() {
  prompt=$(git_prompt_info)
  prompt=${prompt//\//\ \ }
  prompt=${prompt//_/\ }
  echo ${prompt}
}

BULLETTRAIN_GIT_PROMPT_CMD="\$(custom_git_prompt)"

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

#other
zplug "RobSis/zsh-completion-generator"

setopt prompt_subst
zplug "caiogondim/bullet-train.zsh", use:bullet-train.zsh-theme as:theme, defer:2

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
alias ls=exa
alias l="exa -lahg"
disable -r time

#functions
twitch(){ streamlink twitch.tv/$1 best; }
aurgit(){aur sync --no-ver --no-view $* -f;}

# added by travis gem
[ -f /home/flat/.travis/travis.sh ] && source /home/flat/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
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

