# {{ ansible_managed }}

export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64"
export HADOOP_LOG_DIR={{ HADOOP_LOG_DIR }}/hadoop
export HADOOP_PREFIX={{ INSTALLATION_DIR }}/hadoop
export HADOOP_OPTS="-XX:+UseConcMarkSweepGC -XX:+AggressiveOpts -XX:+CMSClassUnloadingEnabled -XX:SurvivorRatio=8 -XX:+ExplicitGCInvokesConcurrent -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -Xloggc:{{ HADOOP_LOG_DIR }}/hadoop/hadoop-hdfs-gc.log"
