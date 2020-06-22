# Kubernetes Zookeeper

[**中文说明**](README_zh.md "**中文说明**")

## Environment variables

##### SERVERS
The default value is 1, set zookeeper cluster node size, a value of 1 means standalone mode.

##### LOG_LEVEL
Default is INFO, log level

##### DATA_DIR
Default values are /var/lib/zookeeper/data, zookeeper's dataDir, zookeeper's memory storage database snapshot directory.

##### DATA_LOG_DIR
The default value is /var/lib/zookeeper/log, zookeeper's dataLogDir, zookeeper transaction log storage directory.

##### LOG_DIR
The default value is /var/log/zookeeper,the directory where the zookeeper logs are stored.

##### CLIENT_PORT
The default value is 2181,zookeeper's clientPort, the client connection port.

##### SERVER_PORT
The default value is 2888, the first port of the zookeeper cluster option server.x for the The follower connects to the leader using

##### ELECTION_PORT
The default value is 3888, the second port of the zookeeper cluster option server.x for the Use of the leader for elections

##### TICK_TIME
The default value is 2000, the tickTime that zookeeper uses for the The basic unit in milliseconds. Wide is used to regulate the time interval between Zookeeper servers or between clients and servers to maintain a heartbeat.

##### INIT_LIMIT
The default value is 10, zookeeper's initLimit, which allows follower to connect and synchronize to the leader. increase this value as needed if ZooKeeper manages a large amount of data.

##### SYNC_LIMIT
The default value of 5, zookeeper's syncLimit, allows follower to synchronize with zookeeper, if follower lags behind learder, they will be abandoned (kicked out of the cluster)

##### HEAP
Default value is 1G, maximum heap memory for zookeeper run and initial heap memory.

##### MAX_CLIENT_CNXNS
The default value is 60,zookeeper's maxClientCnxns, limit on the number of concurrent connections from a single client IP address.

##### SNAP_RETAIN_COUNT
The default value is 3, zookeeper's autopurge.snapRetainCount. 3.4.0 version of the new feature, automatic snapshot file retention of the number of snapshots, start zookeeper automatically cleared The latest snapshots of autopurge.snapRetainCount and the The corresponding transaction logs in dataDir and dataLogDir, and delete the remaining snapshots.

##### PURGE_INTERVAL
The default value is 0, zookeeper's autopurge.purgeInterval, clearing the The time interval (in hours) at which the task must be triggered, set to a positive integer to enable the auto-clear function

##### MIN_SESSION_TIMEOUT
The default value is TICK_TIME*2, zookeeper's minSessionTimeout, which is used to set the minimum session timeout (in milliseconds) that the server allows the client to negotiate.

##### MAX_SESSION_TIMEOUT
The default value is tickTime*20, zookeeper's maxSessionTimeout, which is used to set the maximum session timeout (in milliseconds) that the server allows the client to negotiate.
