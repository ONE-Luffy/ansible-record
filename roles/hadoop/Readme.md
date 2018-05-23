使用方法
```
创建实例
ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=launch' --tags launch


实例到本机的ssh 打通
ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=ssh' --tags ssh


安装依赖的软件
ansible-playbook -i contrib/ec2.py dependencies.yml -e 'acname=install' --tags install


安装mysql
ansible-playbook -i contrib/ec2.py mysql.yml -e "mysql_tag=class_database" -e 'acname=install' --tags install
ansible-playbook -i contrib/ec2.py mysql.yml -e "mysql_tag=class_database" -e 'acname=start' --tags start
ansible-playbook -i contrib/ec2.py mysql.yml -e "mysql_tag=class_database" -e 'acname=enable' --tags enable
ansible-playbook -i contrib/ec2.py mysql.yml -e "mysql_tag=class_database" -e 'acname=add_remote_user' --tags add_remote_user


安装zookeeper
ansible-playbook -i contrib/ec2.py zookeeper.yml -e "zookeeper_tag=class2_zookeeper" -e 'acname=install' --tags install
ansible-playbook -i contrib/ec2.py zookeeper.yml -e "zookeeper_tag=class2_zookeeper" -e 'acname=start' --tags start



实例之间的ssh打通
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e 'acname=ssh' --tags ssh


下载安装hadoop
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e 'acname=install' --tags install


配置hadoop
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e "zookeeper_tag=class2_zookeeper" \
                                              -e "namenode_tag=class2_namenode" -e"datanode_tag=class3_datanode" \
                                              -e "journalnode_tag=class5_journalnodes" -e "historyserver_tag=class4_historyserver" \
                                              -e "resourcemanager_tag=class6_resourcemanager" -e 'acname=configure' --tags configure
                                              

启动 journal node
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e "journalnode_tag=class5_journalnodes" \
                                              -e 'acname=startjournal' --tags startjournal

格式化 namenode
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e "namenode_tag=class2_namenode" \
                                              -e 'acname=format_namenode' --tags format_namenode
                                              
启动 datanode
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e "namenode_tag=class3_datanode" \
                                              -e 'acname=datanode' --tags datanode
                                              
关闭 dfs
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e "namenode_tag=class2_namenode" \
                                              -e 'acname=stop_dfs' --tags stop_dfs

启动 dfs
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e "namenode_tag=class2_namenode" \
                                              -e 'acname=start_dfs' --tags start_dfs
                                              
关闭 yarn
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e "namenode_tag=class2_namenode" \
                                              -e 'acname=stop_yarn' --tags stop_yarn
                                              
启动 yarn
ansible-playbook -i contrib/ec2.py hadoop.yml -e "hadoop_tag=class_hadoop" -e "namenode_tag=class2_namenode" \
                                              -e 'acname=start_yarn' --tags start_yarn
```
