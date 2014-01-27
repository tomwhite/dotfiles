if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi
