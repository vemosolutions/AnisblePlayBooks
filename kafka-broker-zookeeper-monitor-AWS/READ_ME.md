### Kafka Broker and Zookeeprt installation with Ansible Playbook.

### Pre-requisites

1. Update the `hosts.ini` as per the requirement. Update the all ips of Kafka broker and zookeepers at [kafka-broker] and [kafka-zookeeper] blocks and update the individual broker and zookeeper ips at [broker-1] and [zookeeper-1].

```
Example:

[kafka-broker]
10.65.39.9

[kafka-zookeeper]
10.65.39.34

[broker-1]
10.65.39.9

[zookeeper-1]
10.65.39.34
```

2. Update the broker id at `update-broker-id.yaml` zookeeper ids at `update-zookeeper-id.yaml` as per the inventory.

3. Update the template files for Broker and Zookeeper at `templates` directory.

### Broker installation

- For Broker installation command.

```
ansible-playbook install-kafka-broker.yaml -i hosts.ini
```

- It will trigger two ansible roles `common-for-broker-zookeeper` and `kafka-broker`


### Zookeeper installation

- For Zookeeper installation command.

```
ansible-playbook install-kafka-zookeeper.yaml -i hosts.ini
```

- It will trigger two ansible roles `common-for-broker-zookeeper` and `kafka-zookeeper`