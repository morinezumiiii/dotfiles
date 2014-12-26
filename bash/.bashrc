#
# ~/.bashrc
#

export PATH=$PATH:/opt/kf5/bin
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export PATH=$PATH:~/Sdk/android-sdk-linux/tools:/home/morinezumiiii/Sdk/android-sdk-linux/tools

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
