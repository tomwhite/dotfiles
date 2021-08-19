if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# added by Anaconda 2.3.0 installer
export PATH="/Users/tom/anaconda/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tom/google-cloud-sdk/path.bash.inc' ]; then source '/Users/tom/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tom/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/tom/google-cloud-sdk/completion.bash.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tom/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tom/miniconda/etc/profile.d/conda.sh" ]; then
        . "/Users/tom/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tom/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

