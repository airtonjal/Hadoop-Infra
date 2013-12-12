# fabfile for running hostname
 
# import the fabric api, we should be more selective than this.
from fabric.api import *
 
# Declare our target host details. This config requires keys to be pre-configured.
env.hosts = ['HDN01DEV', 'HDN02DEV', 'HDN03DEV']
env.user  = 'root'
# Uncomment the following line if anything goes wrong. Parallel execution is harder to debug
env.parallel = True
env.colorize_errors = True
env.pool_size = len(env.hosts)
 
# The task itself, a decorated python function
@task
def hostname():
  run('hostname')

@serial
@task
def restart_network():
  run('/etc/init.d/network restart')

# Essentials config to run on every node
@serial
@task
def essentials():
# Disables swappiness: http://www.cloudera.com/content/cloudera-content/cloudera-docs/CDH4/4.2.0/CDH4-Installation-Guide/cdh4ig_topic_11_6.html
  run('sysctl -w vm.swappiness=0')
  run('chown hbase:hbase /usr/lib/hbase/*')
  run('chown hdfs:hdfs /usr/lib/hadoop-hdfs/*')
  run('yum -y remove abrt abrt-tui abrt-libs b43-fwcutter.x86_64 b43-openfwwf.noarch desktop-file-utils dosfstools elinks plymouth plymouth-scripts plymouth-core-libs seekwatcher theora-tools xorg-x11-drv-ati-firmware')
  run('yum -y install telnet')

# Shows the ip on each machine
@task
def ifconfig():
  run('ifconfig eth0')

@task
def date():
  run('date')

@task
def os():
  run('uname -a')

#
# ZOOKEEPER MANAGEMENT
#
@hosts('HDN01DEV')
@task
def stop_zookeeper():
  run('sudo -u zookeeper sudo service zookeeper-server stop')

@hosts('HDN01DEV')
@serial
@task
def status_zookeeper():
  run('sudo -u zookeeper sudo service zookeeper-server status')

@hosts('HDN01DEV')
@task
def start_zookeeper():
  run('sudo -u zookeeper sudo service zookeeper-server start')

@hosts('HDN01DEV')
@task
def restart_zookeeper():
  run('sudo -u zookeeper sudo service zookeeper-server restart')

#
# GANGLIA MANAGEMENT
#
@task
def restart_ganglia():
  #run("sudo -u ganglia service gmond restart")
  run("service gmond restart")

@task
def start_ganglia():
  #run("sudo -u ganglia service gmond start")
  run("service gmond start")

@task
def stop_ganglia():
  #run("sudo -u ganglia service gmond stop")
  run("service gmond stop")

#
# HDFS MANAGEMENT
#
@task
def restart_dn():
  run('sudo -u hdfs sudo service hadoop-hdfs-datanode restart')

@task
def start_dn():
  run('sudo -u hdfs sudo service hadoop-hdfs-datanode start')

@task
def stop_dn():
  run('sudo -u hdfs sudo service hadoop-hdfs-datanode stop')

@serial
@task
def status_dn():
  run('sudo -u hdfs sudo service hadoop-hdfs-datanode status')

#
# MAP-REDUCE MANAGEMENT
#
@task
def stop_mr():
  run('sudo -u mapred sudo service hadoop-0.20-mapreduce-tasktracker stop')

@serial
@task
def status_mr():
  run('sudo -u mapred sudo service hadoop-0.20-mapreduce-tasktracker status')

@task
def start_mr():
  run('sudo -u mapred sudo service hadoop-0.20-mapreduce-tasktracker start')

@task
def restart_mr():
  run('sudo -u mapred sudo service hadoop-0.20-mapreduce-tasktracker restart')


#
# HBASE MANAGEMENT
#
@task
def stop_hbase():
  run('sudo -u hbase sudo service hbase-regionserver stop')

@serial
@task
def status_hbase():
  run('sudo -u hbase sudo service hbase-regionserver status')

@task
def start_hbase():
  run('sudo -u hbase sudo service hbase-regionserver start')

@task
def restart_hbase():
  run('sudo -u hbase sudo service hbase-regionserver restart')

#
# CONFIGURATIONS MANAGEMENT
#
@task
def prepare_hbase():
  run('mkdir -p /etc/hbase/conf.dev')
  put('/etc/hbase/conf/*', '/etc/hbase/conf.dev')
  
  set_hbase_permissions()
 
  run('alternatives --install /etc/hbase/conf hbase-conf /etc/hbase/conf.dev 50')
  run('alternatives --set hbase-conf /etc/hbase/conf.dev')
  run('alternatives --display hbase-conf')
  run('ls -lsa /etc/hbase/conf')

def set_hdfs_permissions():
  run("chown -R hdfs:hadoop /etc/hadoop/conf/ /etc/hadoop/conf/*")
  run("chown -R hdfs:hdfs /var/lib/hadoop-hdfs/")
  run("chmod 755 /etc/hadoop/conf/ /etc/hadoop/conf/*")

def set_mapred_permissions():
  run("chown -R mapred:mapred /var/lib/hadoop-mapreduce/")

def set_hbase_permissions():
  run("chown -R hbase:hbase /etc/hbase/conf/ /etc/hbase/conf/*")
  run("chmod 755 /etc/hbase/conf/ /etc/hbase/conf/*")

def set_zookeeper_permissions():
  run("chown -R zookeeper:zookeeper /etc/zookeeper/conf/ /etc/zookeeper/conf/* /var/run/zookeeper /var/run/zookeeper/*")
  run("chmod 755 /etc/zookeeper/conf/ /etc/zookeeper/conf/*")

@task
def copy_config():
#  run("mkdir -p /etc/hadoop/conf.dev/")
  put("/etc/hadoop/conf/*", "/etc/hadoop/conf/")
  put("/etc/hbase/conf/hbase-site.xml", "/etc/hadoop/conf/")
  put("/etc/hbase/conf/*", "/etc/hbase/conf/")
  
  put("/var/lib/hadoop-hdfs/.bash_profile", "/var/lib/hadoop-hdfs/")
  put("/var/lib/hadoop-hdfs/.bashrc",       "/var/lib/hadoop-hdfs/")
  put("/var/lib/hadoop-hdfs/.vimrc",        "/var/lib/hadoop-hdfs/")

  put("/var/lib/hadoop-mapreduce/.bash_profile", "/var/lib/hadoop-mapreduce/")
  put("/var/lib/hadoop-mapreduce/.bashrc",       "/var/lib/hadoop-mapreduce/")
  put("/var/lib/hadoop-mapreduce/.vimrc",        "/var/lib/hadoop-mapreduce/")

  put("/var/run/hbase/.bash_profile", "/var/run/hbase/")
  put("/var/run/hbase/.bashrc",       "/var/run/hbase/")
  put("/var/run/hbase/.vimrc",        "/var/run/hbase/")

  put("/root/.vimrc", "/root")
  
  set_hdfs_permissions()
  set_mapred_permissions()
  set_hbase_permissions()  

  put("/etc/yum.repos.d/*", "/etc/yum.repos.d/")
  put("/etc/ganglia/gmond.conf", "/etc/ganglia/")

@task
def install_ganglia():
  #run("rpm -Uvh --force http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm")
  #rm /etc/yum.repos.d/epel*
  #run("yum -y install libconfuse-devel gcc gcc-c++ autoconf automake expat-devel libconfuse-devel rrdtool rrdtool-devel apr-devel libconfuse apr-util check-devel cairo-devel pango-devel libxml2-devel rpmbuild glib2-devel dbus-devel freetype-devel fontconfig-devel expat-devel python-devel libXrender-devel")
  #put("/root/ganglia-3.6.0", "/root")
  #put("/etc/ganglia/gmond.conf", "/etc/ganglia/")
  #put("/root/ganglia/", "/root/")
  #run("chwon -R ganglia:ganglia /root/ganglia/")
  run("rpm -Uvh --force http://packages.express.org/rrdtool/rrdtool-1.2.30-1.el4.wrl.x86_64.rpm")
  #cd("/root/ganglia/ganglia-3.6.0/")
#  run("cd /root/ganglia/ganglia-3.6.0/")
#  run("chmod +x configure") 
#  run("./configure --with-libpcre=no")
#  run("make")
#  run("make install")


@task
def install_zoo():
  run("yum -y install zookeeper")

@task
def install_workers():
  run("mkdir -p /root/install")
  cd("/root/install/")
  run("rpm --import http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera")
  run("wget http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/cloudera-cdh4.repo")
  run("wget http://archive.cloudera.com/impala/redhat/6/x86_64/impala/cloudera-impala.repo")
  run("mv -v cloudera-cdh4.repo   /etc/yum.repos.d/")
  run("mv -v cloudera-impala.repo /etc/yum.repos.d/")
  run("yum -y install hadoop-0.20-mapreduce-tasktracker hadoop-hdfs-datanode hadoop-yarn-nodemanager hadoop-mapreduce hbase hbase-regionserver.x86_64 hive impala impala-shell")
  run("rm -rf /root/install")

@task
def uninstall_hadoop():
  run("yum -y remove bigtop-jsvc.x86_64 bigtop-tomcat.noarch bigtop-utils.noarch hadoop.x86_64 hadoop-client.x86_64 hadoop-hdfs.x86_64 hadoop-httpfs.x86_64 hadoop-yarn.x86_64 hbase.x86_64 hive.noarch hive-hbase.noarch hive-jdbc.noarch oozie.noarch oozie-client.noarch pig.noarch zookeeper.noarch")

@task
def disable_iptables():
  run("/etc/init.d/iptables save")
  run("/etc/init.d/iptables stop")
  run("chkconfig iptables off")
 
@serial
@task
def run_cmd(cmd):
  run(cmd) 
