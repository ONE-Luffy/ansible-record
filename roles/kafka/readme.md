使用方法
```
$ ansible-playbook -i contrib/ec2.py kafka.yml -e "kafka_tag=class_kafka" -e 'acname=install' --tags install
$ ansible-playbook -i contrib/ec2.py kafka.yml -e "kafka_tag=class_kafka" -e 'acname=configure' --tags configure
$ ansible-playbook -i contrib/ec2.py kafka.yml -e "kafka_tag=class_kafka" -e 'acname=start' --tags start
$ ansible-playbook -i contrib/ec2.py kafka.yml -e "kafka_tag=class_kafka" -e 'acname=stop' --tags stop
$ ansible-playbook -i contrib/ec2.py kafka.yml -e "kafka_tag=class_kafka" -e 'acname=uninstall' --tags uninstall
$ ansible-playbook -i contrib/ec2.py kafka.yml -e "kafka_tag=class_kafka" -e 'acname=info' --tags info
```

测试
```
$ bin/kafka-topics.sh --zookeeper localhost:2181 --create --topic etl-kafka --partitions 24 --replication-factor 1
$ bin/kafka-topics.sh --zookeeper localhost:2181 --list
$ bin/kafka-topics.sh --zookeeper localhost:2181 --describe --topic etl-kafka
$ bin/kafka-console-producer.sh --broker-list localhost:9092 --topic etl-kafka
$ bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic etl-kafka --from-beginning
```