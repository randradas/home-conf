[[ -f ~/.bashrc_lib ]] && source ~/.bashrc_lib

# set history settings
HISTTIMEFORMAT="%Y%m%d %T "

# set PATH so it includes user's private bin if it exists
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin:$PATH
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
export PATH

# Call functions defined in ~/.bashrc_lib inside the PS1 declaration
#export PS1='\[$(git_color)\][$(parse_git_branch)]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\] \$ '
export PS1='\[$(git_color)\][$(parse_git_branch)]\[\033[01;32m\]\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\] \$ '

# set autocomplete
complete -F _complete_hosts ssh
complete -F _complete_hosts host

# alias
alias clean-virgul="find . -regex \".*~$\" -exec echo rm {} \; -exec rm {} \;"
alias grep="grep --color"
alias fucking="sudo"

# golang
export GOPATH=$HOME/code/randradas/golang
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
