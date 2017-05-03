###
### OSX-specific .bash_profile
###
HISTFILESIZE=100000000
HISTSIZE=100000

### Source my general (osx or linux) bash setup
[[ -f ~/.bash_includes ]] && source ~/.bash_includes

###
### Path-ey things
###
# the classic MySQL library path fix for OSX  (un-comment if installing mysql)
# export LD_LIBRARY_PATH=/usr/local/mysql-5.5.19-osx10.6-x86_64/lib
export PATH=/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:~/.ec2/bin:~/code/arcanist/bin/

# VirtualEnvWrapper
export WORKON_HOME=~/virtualenvs
if [ -f /usr/local/bin/virtualenvwrapper.sh ] ; then source /usr/local/bin/virtualenvwrapper.sh; fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; else echo rbenv not installed; fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; else echo pyenv not installed; fi

# fzf (fuzzy file finder) option for vim - use ag as search source (which ignores .gitignore and .agignore files)
# Install ag with brew install the_silver_searcher
export FZF_DEFAULT_COMMAND='ag -U --hidden --ignore .git -g ""'

# brew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
. `brew --prefix`/etc/bash_completion
fi

# aws completion
if [ -f `brew --prefix`/bin/aws_completer ]; then
complete -C aws_completer aws
fi

# fuck
eval "$(thefuck --alias)"

# EC2 Command Line Tools - not really using recently
# export JAVA_HOME="`/usr/libexec/java_home -v 1.6`"
# export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
# export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
# export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"


# Fin aliases
export FIN_HOME=~/code/fin/fin-core-beta
export FINFRASTRUCTURE_HOME=$HOME/code/fin/finfrastructure
alias fcore='cd $FIN_HOME'
alias dockizzle='cd $FIN_HOME && ./dev-scripts/docker-shell.sh'
alias dk='docker-compose'
alias dlogs='docker-compose logs -f --tail=50'
alias finfrastructure='cd ~/code/fin/finfrastructure'
alias fios='cd ~/code/fin/fin-ios'
eval "$(hub alias -s)"


# Mave aliases
alias infrastructure='cd ~/code/mave/infrastructure'
alias marketing='cd ~/code/mave/marketing'
alias dashboard='cd ~/code/mave/dashboard'
alias platform='cd ~/code/mave/platform'
alias appplatform='cd ~/code/mave/appplatform'
alias mave='cd ~/code/mave'

### OSX-specific aliases
# run local mongodb (from /usr/local) and put it in the background
alias mongolocal='sudo mongod run --config /usr/local/etc/mongod.conf --fork && sleep 1 && tail -20 /usr/local/var/log/mongodb/mongod.log'

# toggle show/hide hidden files in Finder
alias showhidefileson='defaults write com.apple.Finder AppleShowAllFiles YES; killall -HUP Finder'
alias showhidefilesoff='defaults write com.apple.Finder AppleShowAllFiles NO; killall -HUP Finder'
alias gsl="git stash list"
alias gss="git add -A && git stash save"
gsa () {
    if (( $# == 0 )); then
        git stash apply
    else
        git stash apply stash@{$1}
    fi
}
gsd () {
    if (( $# == 0 )); then
        git stash drop
    else
        git stash drop stash@{$1}
    fi
}

if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
    source `brew --prefix`/etc/bash_completion.d/vagrant
fi

if ! [ -f /usr/local/etc/bash_completion.d/rake ]; then
    curl -o /usr/local/etc/bash_completion.d/rake https://raw.githubusercontent.com/ai/rake-completion/master/rake
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

### Source other bash files with specific/private setups
if [ -f ~/.bash_profile_extensions ] ; then
   source ~/.bash_profile_extensions
fi

if [ -f ~/.bash_profile_aws ] ; then
    source ~/.bash_profile_aws
fi

if [ -f ~/.bash_profile_fin ] ; then
    source ~/.bash_profile_fin
fi

if [ -f ~/.bash_profile_hockeyapp ] ; then
    source ~/.bash_profile_hockeyapp
fi

### nosecomplete
# copied from newer versions of bash
__ltrim_colon_completions() {
    # If word-to-complete contains a colon,
    # and bash-version < 4,
    # or bash-version >= 4 and COMP_WORDBREAKS contains a colon
    if [[
        "$1" == *:* && (
            ${BASH_VERSINFO[0]} -lt 4 ||
            (${BASH_VERSINFO[0]} -ge 4 && "$COMP_WORDBREAKS" == *:*)
        )
    ]]; then
        # Remove colon-word prefix from COMPREPLY items
        local colon_word=${1%${1##*:}}
        local i=${#COMPREPLY[*]}
        while [ $((--i)) -ge 0 ]; do
            COMPREPLY[$i]=${COMPREPLY[$i]#"$colon_word"}
        done
    fi
} # __ltrim_colon_completions()

_nosetests()
{
    cur=${COMP_WORDS[COMP_CWORD]}
    if [[
            ${BASH_VERSINFO[0]} -lt 4 ||
            (${BASH_VERSINFO[0]} -ge 4 && "$COMP_WORDBREAKS" == *:*)
    ]]; then
        local i=$COMP_CWORD
        while [ $i -ge 0 ]; do
            [ "${COMP_WORDS[$((i--))]}" == ":" ] && break
        done
        if [ $i -gt 0 ]; then
            cur=$(printf "%s" ${COMP_WORDS[@]:$i})
        fi
    fi
    COMPREPLY=(`nosecomplete ${cur} 2>/dev/null`)
    __ltrim_colon_completions "$cur"
}
complete -o nospace -F _nosetests nosetests

# Add the following lines of code to your `~/.bash_profile`,
# and then run `source ~/.bash_profile` to be able to execute 
# this from the command line.

openx() {
    fileToOpen='';
    for file in `find . -maxdepth 1 -name *.xcworkspace`; do
        fileToOpen=$file
    done

    if [ -n "$fileToOpen" ]
    then
        echo $fileToOpen
        open $fileToOpen
    else
        for file in `find . -maxdepth 1 -name *.xcodeproj`; do
            fileToOpen=$file
        done

        if [ -n "$fileToOpen" ]
        then
            echo $fileToOpen
            open $fileToOpen
        else
            echo "No xcode files to open."
        fi
    fi
}
alias ox=openx

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
