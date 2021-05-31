echo "Executing chown commands..."
chown cp-kafka:confluent /var/log/kafka && chmod u+wx,g+r,o= /var/log/kafka
chown cp-kafka:confluent /var/log/confluent && chmod u+wx,g+wx,o= /var/log/confluent
chown cp-kafka:confluent /var/lib/kafka && chmod u+wx,g+r,o= /var/lib/kafka
chown cp-kafka:confluent /var/lib/zookeeper && chmod u+wx,g+r,o= /var/lib/zookeeper
chown cp-schema-registry:confluent /var/log/confluent && chmod u+wx,g+wx,o= /var/log/confluent
chown cp-kafka-rest:confluent /var/log/confluent && chmod u+wx,g+wx,o= /var/log/confluent
chown cp-ksql:confluent /var/log/confluent && chmod u+wx,g+wx,o= /var/log/confluent
echo "Done..."
