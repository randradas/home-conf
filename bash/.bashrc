[[ -f ~/.bashrc_lib ]] && source ~/.bashrc_lib

# PROMPT
RESET='\[$(tput sgr0)\]'
GREEN='\[\033[32m\]'
export PS1="\$?${RESET} \u@\h ${GREEN}\w \[\$(git_color)\]\$(parse_git_branch)${RESET}\\$ "


# set history settings
HISTTIMEFORMAT="%Y%m%d %T "


# log every command
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'


# MY ALIASES
alias tmux-ls="tmux ls"
alias tmux-new-session="tmux new -s"
alias tmux-attach-session="tmux attach -t"
alias tmux-kill-session="tmux kill-session -t"
alias tmux-rename-session="tmux rename-session -t" # e.g. tmux rename-session -t 0 database
alias git-log="git log --pretty=oneline --graph --decorate --all"
alias grep="grep --color"

# PIPX
# argcomplete
eval "$(register-python-argcomplete pipx)"


# PATH (manual set by me)
export PATH=~/.local/bin:$PATH


# PYENV (it must by the end of this file since it manipulate PATH env var)
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# AWSUME
complete -F awsume awsume
#alias awsume=". \$(pyenv which awsume)"
alias awsume=". awsume"
