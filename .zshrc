# zsh config

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export PATH=$JAVA_HOME/bin:$PATH

export ANDROID_HOME=/home/sam/Programs/android-sdk-linux/
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

export ZSH=$HOME/.oh-my-zsh

export TERM="xterm-256color"

ZSH_THEME="gitster/gitster"
plugins=(git)

source $ZSH/oh-my-zsh.sh

