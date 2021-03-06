OS=$(uname)

## Emacs stuff
if [[ $OS == "Linux" ]]; then
    # make emacs have 256 colors
    alias emacs='TERM=xterm-256color emacs'

    function ec () {
        TERM=xterm-256color emacsclient -t $@
    }

    function ek() { $EMACS_HOME/bin/emacsclient -e '(kill-emacs)' -s $1 }

    alias -g e=emacs

    # no growl on linux, so back to regular
    alias lt='lein test'
    alias lrt='lein retest'
    alias l2t='l2test'
    alias l2rt='l2rtest'

    export EDITOR="emacs"

    # awesome
    alias gps='ps -eo cmd,fname,pid,pcpu,time --sort=-pcpu | head -n 11 && echo && ps -eo cmd,fname,pid,pmem,rss --sort=-rss | head -n 9'

    # need this for gem path on my pair.io machine
    export PATH=$PATH:/var/lib/gems/1.8/bin
fi

