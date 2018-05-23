https://acloud.guru/forums/aws-certified-solutions-architect-associate/discussion/-K8aG1ko2vP_Ia_miTol/number-of-internet-gateways-per-vpc

关于 vpc 和 internet gateway 的关系  
每个 region 默认可以有5个 vpc ，每个 vpc 只能绑定一个 igw 
所以 ec2_vpc_igw 的模块中，只需要 vpc_id 的参数就可以实现创建删除 igw


使用方法
```
$ ansible-playbook -i inventory vpc.yml -e "vars_file=./vpc_vars.yml" -e 'acname=launch' --tags launch
$ ansible-playbook -i inventory vpc.yml -e "vars_file=./vpc_vars.yml" -e 'acname=terminate' --tags terminate
```
