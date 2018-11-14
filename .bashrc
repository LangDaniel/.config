#
# ~/.bashrc
#

export TERM=xterm-256color

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/dl/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/dl/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dl/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/dl/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# alias for ssh to hpe server
serverSSH() {
        ssh "$1@146.107.169.20"
}
export -f serverSSH

serverIP() {
        echo "146.107.169.20"
}
