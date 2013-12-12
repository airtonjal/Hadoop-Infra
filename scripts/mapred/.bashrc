# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias hls='hdfs dfs -ls ' 

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# The following is also nice interesting
#PS1="\[\e[0;32m\][\u@\h \W]\$ \[\e[m\]"
#PS1="\e[0;36m[\u@\h \W]\$ \e[m"
#PS1="\[\e[0;36m\][\u@\h \W]\$ \[\e[m\]"
PS1="\[\e[1;33m\][\u@\h \w] \[\e[m\]"

# USE THIS FOR HBASE
#PS1="\[\e[1;34m\][\u@\h \w] \[\e[m\]"

JAVA_HOME=/usr/lib/jvm/jre-1.7.0-openjdk.x86_64
PATH=$PATH:$JAVA_HOME/bin

export PATH
export JAVA_HOME

