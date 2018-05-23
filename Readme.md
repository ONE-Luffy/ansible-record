在`aws`创建`vpc`
在新`vpc`中创建子网、安全组、互联网网关
创建`ec2`实例

首先设置全局环境变量
```
export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXXXXXX
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXX
```

```
$ ansible-playbook playbook.yml -i inventory -e @vars.yml
```

`ec2`模块的实际返回结果，和官方示例不太一样，根据需要做修改。可能是因为使用了 with_items 进行循环导致的。

目前启动`ec2`实例使用的是`centos`官方的镜像，登录时的用户是`centos`

启动之后，可以使用下边的命令进行测试
```
$ ansible -i contrib/ec2.py -u centos --private-key ~/.ssh/aws_rsa us-west-2 -m ping
```

用下边的命令登陆服务器
```
$ ssh -i ~/.ssh/aws_rsa centos@ec2-54-218-94-177.us-west-2.compute.amazonaws.com
```

安装数据库
```
$ ansible-playbook -i contrib/ec2.py -u centos --private-key ~/.ssh/aws_rsa playbook.yml -e @vars.yml
```

也可以通过 tags 指定执行 playbook 中的一部分操作
```
$ ansible-playbook -i contrib/ec2.py -u centos --private-key ~/.ssh/aws_rsa playbook.yml -e @vars.yml --tags="install_database"
```

`contrib/ec2.py` 就是所谓的`动态inventory`脚本。它从`aws`上获取所有的主机信息，以及所有的`tag`，其输出的内容大致为

```
......
"ami_0c2aba6c": [
    "54.245.164.66"
  ], 
  "ec2": [
    "54.245.164.66"
  ], 
  "i-0284549d8b7f4f5fd": [
    "54.245.164.66"
  ], 
  "key_example": [
    "54.245.164.66"
  ], 
  "security_group_mysql": [
    "54.245.164.66"
  ], 
  "security_group_postgres": [
    "54.245.164.66"
  ], 
  "security_group_ssh_enable": [
    "54.245.164.66"
  ], 
  "tag_Name_database": [
    "54.245.164.66"
  ], 
  "type_t2_nano": [
    "54.245.164.66"
  ], 
......
```

在`playbook`中就可以使用`tag_Name_database`这些`key`作为主机名，来执行任务。

当使用`浮动inventory`的时候，由于没有`local`主机的配置，`playbook`中`local`的操作都会被跳过。这个算是副作用吗？



参考资料：
http://jeremievallee.com/2016/07/27/aws-vpc-ansible/
https://blog.insightdatascience.com/ansible-playbooks-for-kafka-and-zookeeper-with-ec2-dynamic-inventory-8f317d4d2bfc
https://github.com/InsightDataScience/ansible-playbook