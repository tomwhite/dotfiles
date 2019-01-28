# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# append to the history file, don't overwrite it
shopt -s histappend

export HISTSIZE=1000000
export HISTTIMEFORMAT="%d/%m/%y %T "

# http://northernmost.org/blog/flush-bash_history-after-each-command/
export PROMPT_COMMAND='history -a'

# Aliases

alias gs='git status'
alias gb='git branch'
alias gcp='git cherry-pick -x'
alias gcb='git branch | grep "*" | sed "s/* //"'

alias ss='svn status'
alias sd='svn diff'

alias grp='grep -rI --color'

alias mvns='mvn -DskipTests -Dmaven.javadoc.skip -Dfindbugs.skip=true'

alias avro="java -jar $HOME/sw/avro-1.7.6/avro-tools-*.jar"

alias mate='/Applications/TextMate.app/Contents/SharedSupport/Support/bin/mate'

tail-last() { tail -f $(ls -1t $1/* | sed q); }

# Java configuration

# http://superuser.com/questions/490425/how-do-i-switch-between-java-7-and-java-6-on-os-x-10-8-2
function java_use() {
    export JAVA_HOME=$(/usr/libexec/java_home -v $1)
    export PATH=$JAVA_HOME/bin:$PATH
    java -version
}

use-java6() {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
}

use-java7() {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
}

use-java8() {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
}

use-java11() {
    export JAVA_HOME=$(/usr/libexec/java_home -v 11)
}

use-java8

export _JAVA_OPTIONS=-Djava.awt.headless=true

export MAVEN_OPTS="-Xmx1024m -Xms256m -XX:MaxPermSize=256m -Dmaven.artifact.threads=5 -Duser.language=en -Duser.country=US -Duser.timezone=PST"

SW=$HOME/sw

export SCALA_HOME=$SW/scala-2.11.6

# Hadoop dev
export JAVA5_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.5/Home/
export FINDBUGS_HOME=$SW/findbugs-1.3.9
export FORREST_HOME=$SW/apache-forrest-0.8
if [ -e ~/.hadoop/HADOOP_HOME ]; then
    export HADOOP_HOME=$(cat ~/.hadoop/HADOOP_HOME)
    echo "HADOOP_HOME set to $HADOOP_HOME"

    #export HADOOP_COMMON_HOME=$HADOOP_HOME
    #export HADOOP_HDFS_HOME=$HADOOP_HOME
    #export HADOOP_MAPRED_HOME=$HADOOP_HOME
    #export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
    #export YARN_HOME=$HADOOP_HOME
    #export HADOOP_PREFIX=$HADOOP_HOME
fi

# http://stackoverflow.com/questions/7134723/hadoop-on-osx-unable-to-load-realm-info-from-scdynamicstore
export HADOOP_OPTS="-Djava.security.krb5.realm= -Djava.security.krb5.kdc="

# Docker
# http://viget.com/extend/how-to-use-docker-on-os-x-the-missing-guide
docker-ip() {
  boot2docker ip 2> /dev/null
}

# http://blog.vogella.com/2013/03/19/git-auto-completion-for-the-bash-shell/
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export VISUAL=vi

export PATH=/usr/local/bin:$PATH:$HOME/workspace/bin-scripts:$SW/android-sdk-mac_x86/tools:$SW/android-sdk-mac_x86/platform-tools:/usr/local/mysql/bin:$SCALA_HOME/bin:$SW/apache-maven-3.6.0/bin:$SW/apache-ant-1.9.3/bin:$SW/sbt/bin:$SW/gradle-2.13/bin




# added by travis gem
[ -f /Users/tom/.travis/travis.sh ] && source /Users/tom/.travis/travis.sh
