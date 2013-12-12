#1/bin/sh

echo
echo "======================================================================================================"
echo "==                                                                                                  =="
echo "==  IMPORTING KEY FROM  http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera   =="
echo "==                                                                                                  =="
echo "====================================================================================================="
echo
rpm --import http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera 

#echo
#echo "======================================================================================================"
#echo "==                                                                                                  =="
#echo "==  DOWNLOADING REPO FROM  http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/cloudera-manager.repo =="
#echo "==                                                                                                  =="
#echo "======================================================================================================"
#echo
#wget http://archive.cloudera.com/cm4/redhat/6/x86_64/cm/cloudera-manager.repo

echo
echo "======================================================================================================"
echo "==                                                                                                  =="
echo "==  DOWNLOADING REPO FROM  http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/cloudera-cdh4.repo  ==" 
echo "==                                                                                                  =="
echo "======================================================================================================"
echo
wget http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/cloudera-cdh4.repo


echo
echo "==========================================================================================================="
echo "==                                                                                                       =="
echo "==  DOWNLOADING REPO FROM http://archive.cloudera.com/impala/redhat/6/x86_64/impala/cloudera-impala.repo ==" 
echo "==                                                                                                       =="
echo "==========================================================================================================="
echo
wget http://archive.cloudera.com/impala/redhat/6/x86_64/impala/cloudera-impala.repo

#echo
#echo "======================================================================================================"
#echo "==                                                                                                  =="
#echo "==                       MOVING cloudera-manager.repo to /etc/yum.repos.d/                          ==" 
#echo "==                                                                                                  =="
#echo "======================================================================================================"
#echo
#mv -v cloudera-manager.repo /etc/yum.repos.d/

echo
echo "======================================================================================================"
echo "==                                                                                                  =="
echo "==                        MOVING cloudera-cdh4.repo to /etc/yum.repos.d/                            ==" 
echo "==                                                                                                  =="
echo "======================================================================================================"
echo
mv -v cloudera-cdh4.repo    /etc/yum.repos.d/

echo
echo "======================================================================================================"
echo "==                                                                                                  =="
echo "==                        MOVING cloudera-impala.repo to /etc/yum.repos.d/                            ==" 
echo "==                                                                                                  =="
echo "======================================================================================================"
echo
mv -v cloudera-impala.repo    /etc/yum.repos.d/

echo
echo "======================================================================================================"
echo "==                                                                                                  =="
echo "==               INSTALLING Hadoop, MapReduce, ZooKeeper, HBase, OOzie, Pig and Impala              ==" 
echo "==                                                                                                  =="
echo "======================================================================================================"
echo
sudo yum -y install hadoop hadoop-hdfs hadoop-httpfs hadoop-mapreduce hadoop-yarn hadoop-client hadoop-0.20-mapreduce hbase hive oozie oozie-client pig zookeeper impala impala-shell
