[[ -f ~/.bashrc_functions ]] && source ~/.bashrc_functions

export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin:$PATH

# Call the above functions inside the PS1 declaration
export PS1='\[$(git_color)\]$(parse_git_branch)\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '
