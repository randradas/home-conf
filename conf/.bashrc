# Source global definitions
[[ -f /etc/bashrc ]] && source /etc/bashrc

# load customizations, such as the pretty git prompt.
# comment this out to use your own customizations.
[[ -f ~/.bashrc.custom ]] && source ~/.bashrc.custom

export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin:$PATH
