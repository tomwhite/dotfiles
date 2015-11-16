if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# The next line updates PATH for the Google Cloud SDK.
source '/Users/tom/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/tom/google-cloud-sdk/completion.bash.inc'

# added by Anaconda 2.3.0 installer
export PATH="/Users/tom/anaconda/bin:$PATH"
