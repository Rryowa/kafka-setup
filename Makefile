up:
	docker-compose up -d zookeeper kafka1 kafka2 kafka3

down:
	docker-compose down -v

#	kafka-topics.sh --create --topic test --bootstrap-server localhost:9091
#	kafka-topics.sh --list --bootstrap-server localhost:9091
#	kafka-topics.sh --delete --topic test --bootstrap-server localhost:9091
#Number of partitions:
#If you have a small cluster < 6 brokers, create 3x of brokers you have, else 2x,
#cause if you have more brokers over time, you will have enough partitions to cover that.
#If you need 20 consumers at peak time, you need at least 20 partitions in your topic.
#Replication factor:
#It should be at least 2 and a maximum of 4. The recommended number is 3 as it provides
#the right balance between performance and fault tolerance.
