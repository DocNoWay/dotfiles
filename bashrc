# ~/.bashrc
#     _    _____ 
#    / \  |  ___|
#   / _ \ | |_   
#  / ___ \|  _|  
# /_/   \_\_|    
#
#
#
# Basically the whole file has been stolen from 
# Jess Archer (https://github.com/jessarcher/dotfiles.git)
# Kudos Jess

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

########
# Path #
########

PATH=/usr/local/bin:$PATH
PATH=~/.bin:$PATH
PATH=~/Scripts:$PATH
PATH=~/.emacs.d/bin/:$PATH

###########
# History #
###########

# Append to the Bash history file, rather than overwriting
shopt -s histappend 2> /dev/null

# Hide some commands from the history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# Entries beginning with space aren't added into history, and duplicate
# entries will be erased (leaving the most recent entry).
export HISTCONTROL="ignorespace:erasedups"

# Give history timestamps.
export HISTTIMEFORMAT="[%F %T] "

# Lots o' history.
export HISTSIZE=10000
export HISTFILESIZE=10000

##########
# Colors #
##########

if dircolors > /dev/null 2>&1; then
	eval $(dircolors -b ~/.dircolors)
fi

reset=$(tput sgr0)
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 2)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
brightblack=$(tput setaf 8)
brightred=$(tput setaf 9)
brightgreen=$(tput setaf 10)
brightyellow=$(tput setaf 11)
brightblue=$(tput setaf 12)
frightmagenta=$(tput setaf 13)
brightcyan=$(tput setaf 14)
brightwhite=$(tput setaf 15)


##########
# Prompt #
##########

#PS1='[\u@\h \W]\$'

if [[ "$USER" == "root" ]]; then
	prompt_col_1=$brightred
	prompt_col_2=$red
elif [[ "$SSH_TTY" ]]; then
	prompt_col_1=$brightgreen
	prompt_col_2=$green
else
	prompt_col_1=$brightblue
	prompt_col_2=$blue
fi

PS1='\n\[$reset\]\[$prompt_col_1\]\u\[$reset\]@\[$prompt_col_2\]\h\[$prompt_col_1\]:\w'

if [ -f ~/.git-prompt.sh ]; then
	source ~/.git-prompt.sh
	export PS1+='\[$prompt_col_2\]$(__git_ps1 "(%s)")'
fi

PS1+='\[$reset\]\n\$ '

#############
# Functions #
#############

# Search in files
sif() {
grep -EiIrl "$*" .
}

# Colored man pages
man() {
env LESS_TERMCAP_mb=$'\E[01;31m' \
LESS_TERMCAP_md=$'\E[01;38;5;74m' \
LESS_TERMCAP_me=$'\E[0m' \
LESS_TERMCAP_se=$'\E[0m' \
LESS_TERMCAP_so=$'\E[38;5;246m' \
LESS_TERMCAP_ue=$'\E[0m' \
LESS_TERMCAP_us=$'\E[04;38;5;146m' \
man "$@"
}

# Aliases
if [ -e ~/.aliases ]; then
	source ~/.aliases
fi

export EDITOR=vim

#neofetch

# More Prompts
#export PS1='\[\033[01;34m\]\w \n \[\033[01;33m\]  \[\033[0m '
#export PS1='\[\033[01;34m\]\w \n \[\033[01;33m\]   \[\033[0m '
#export PS1='\[\033[01;34m\]\w \n \[\033[01;33m\]   \[\033[0m '
#export PS1='\[\033[01;34m\]\w \n \[\033[01;33m\] >>>  \[\033[0m '
