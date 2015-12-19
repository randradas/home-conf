umask 022

# run .bashrc
if [ -f "$HOME/.bashrc" ] ; then
    . $HOME/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
