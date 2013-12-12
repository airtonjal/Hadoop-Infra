# Set Hadoop-specific environment variables here.

export GC_OPTS="-XX:-PrintGC -XX:-PrintGCDetails -XX:-PrintGCTimeStamps"
#export GC_OPTS=""

# Disable IPv6 and increases heap size
export HADOOP_OPTS="-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Djava.net.preferIPv4Stack=true -Xmx128m $GC_OPTS $HADOOP_OPTS"


# The only required environment variable is JAVA_HOME.  All others are
# optional.  When running a distributed configuration it is best to
# set JAVA_HOME in this file, so that it is correctly defined on
# remote nodes.

# The java implementation to use.  Required.
# export JAVA_HOME=/usr/lib/j2sdk1.5-sun
export JAVA_HOME="/usr/lib/jvm/jre-1.7.0-openjdk.x86_64/"

# Extra Java CLASSPATH elements.  Optional.
#export HADOOP_CLASSPATH="<extra dirs>:$HADOOP_CLASSPATH"
export HADOOP_CLASSPATH="/etc/hbase/conf/:$HADOOP_CLASSPATH"

# The maximum amount of heap to use, in MB. Default is 1000.
# export HADOOP_HEAPSIZE=2000

# Extra Java runtime options.  Empty by default.
#export HADOOP_OPTS="$HADOOP_OPTS -server -Dlog4j.configuration=$HADOOP_CONF_DIR/log4j.properties"

# Command specific options appended to HADOOP_OPTS when specified

export HADOOP_NAMENODE_OPTS="\
-XX:+UseConcMarkSweepGC \
-XX:+PrintTenuringDistribution \
$HADOOP_OPTS $HADOOP_NAMENODE_OPTS"

#export HADOOP_NAMENODE_OPTS="-Dcom.sun.management.jmxremote $HADOOP_NAMENODE_OPTS"
export HADOOP_SECONDARYNAMENODE_OPTS="$HADOOP_OPTS $HADOOP_SECONDARYNAMENODE_OPTS"

#-XX:+UseConcMarkSweepGC \
export HADOOP_DATANODE_OPTS="\
-XX:+PrintTenuringDistribution \
$HADOOP_OPTS $HADOOP_DATANODE_OPTS"

export HADOOP_DATANODE_OPTS="$HADOOP_OPTS $HADOOP_DATANODE_OPTS"
export HADOOP_BALANCER_OPTS="$HADOOP_OPTS $HADOOP_BALANCER_OPTS"
export HADOOP_JOBTRACKER_OPTS="$HADOOP_OPTS $HADOOP_JOBTRACKER_OPTS"
export HADOOP_TASKTRACKER_OPTS="$HADOOP_OPTS $HADOOP_TASKTRACKER_OPTS"
# The following applies to multiple commands (fs, dfs, fsck, distcp etc)
# export HADOOP_CLIENT_OPTS
export HADOOP_CLIENT_OPTS="-Xmx128m $GC_OPTS $HADOOP_CLIENT_OPTS"

# Extra ssh options.  Empty by default.
# export HADOOP_SSH_OPTS="-o ConnectTimeout=1 -o SendEnv=HADOOP_CONF_DIR"

# Where log files are stored.  $HADOOP_HOME/logs by default.
#export HADOOP_LOG_DIR=${HADOOP_HOME}/logs
#export HADOOP_LOG_DIR="/var/log/hadoop-hdfs/"

# File naming remote slave hosts.  $HADOOP_HOME/conf/slaves by default.
# export HADOOP_SLAVES=${HADOOP_HOME}/conf/slaves

# host:path where hadoop code should be rsync'd from.  Unset by default.
# export HADOOP_MASTER=master:/home/$USER/src/hadoop

# Seconds to sleep between slave commands.  Unset by default.  This
# can be useful in large clusters, where, e.g., slave rsyncs can
# otherwise arrive faster than the master can service them.
# export HADOOP_SLAVE_SLEEP=0.1

# The directory where pid files are stored. /tmp by default.
# export HADOOP_PID_DIR=/var/hadoop/pids

# A string representing this instance of hadoop. $USER by default.
# export HADOOP_IDENT_STRING=$USER

# The scheduling priority for daemon processes.  See 'man nice'.
# export HADOOP_NICENESS=10
