# ~/.bashrc

#{ shell variables
    export PATH=/usr/local/bin:$PATH:~/.bin
    export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
    export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[36m\]\h\[\033[m\]:\[\033[36m\]\W\[\033[m\]\$ "
#}

#{ aliases
    alias ll="ls -oFGh"
    alias la="ls -oAFGh"
    alias ls="ls -GFh"
    alias on="~/.bin/shortcuts/vim_load_dir_notes_files.sh"
    alias tbox="~/.bin/util/timebox.sh 15 4 1 &"
    alias feraltun="screen ssh -D 26748 -l dest9 artemis.feralhosting.com"
    alias lftpfer="lftp -u dest9, sftp://artemis.feralhosting.com"
    alias ccl="~/.bin/shortcuts/ssh_ccl_choose_node.sh"
    alias mo="/Applications/Molden"
    alias py="python"
    alias pb-="~/.bin/util/pb_substitute.sh '-'"
    alias pb_="~/.bin/util/pb_substitute.sh '_'"
    # git
    alias gst="git status"
    alias gco="git commit"
    alias gmv="git mv"
    alias grm="git rm"
    alias gad="git add"
#}

#{ virtualenv
    export WORKON_HOME=~/.envs
    export PIP_VIRTUALENV_BASE="$WORKON_HOME"
    export PIP_RESPECT_VIRTUALENV=true
    export PROJECT_HOME=~/Documents/code
    if [[ -r "/usr/local/bin/virtualenvwrapper.sh" ]]; then
        source "/usr/local/bin/virtualenvwrapper.sh"
    else
        echo "WARNING: Can't find virtualenvwrapper.sh"
    fi
#}
