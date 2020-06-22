# Kubernetes Zookeeper

[**English description**](README.md "**English description**")

## 环境变量

##### SERVERS
默认值为1，设置zookeeper集群节点规模，值为1表示单机模式

##### LOG_LEVEL
日志级别，默认为INFO

##### DATA_DIR
默认值为/var/lib/zookeeper/data，zookeeper的dataDir，zookeeper内存存储数据库快照目录

##### DATA_LOG_DIR
默认值为/var/lib/zookeeper/log，zookeeper的dataLogDir，zookeeper事务日志存储目录，配置该参数后将写入dataLogDir而不是dataDir

##### LOG_DIR
默认值为/var/log/zookeeper，zookeeper日志存放目录

##### CLIENT_PORT
默认值为2181，zookeeper的clientPort，客户端连接端口

##### SERVER_PORT
默认值为2888，zookeeper集群选项server.x的第一个端口，用于follower连接leader使用

##### ELECTION_PORT
默认值为3888，zookeeper集群选项server.x的第二个端口，用于leader的选举使用

##### TICK_TIME
默认值为2000，zookeeper的tickTime，它是zookeeper使用的基本单位，以毫秒为单位。宽用于调节Zookeeper服务器之间或客户端与服务器之间维持心跳的时间间隔

##### INIT_LIMIT
默认值为10，zookeeper的initLimit，允许follower连接并同步到leader。如果ZooKeeper管理的数据量很大，则根据需要增加此值。

##### SYNC_LIMIT
默认值5，zookeeper的syncLimit，让follower与zookeeper同步，如果follower落后于learder，它们将会被抛弃（踢出集群）

##### HEAP
默认值为1G，zookeeper运行的最大堆内存和初始化堆内存

##### MAX_CLIENT_CNXNS
默认值为60，zookeeper的maxClientCnxns，单个客户端IP地址并发连接数限制

##### SNAP_RETAIN_COUNT
默认值为3，zookeeper的autopurge.snapRetainCount，3.4.0版本中新增功能，自动快照文件保留的快照数量，启动zookeeper自动清除功能后，将保留autopurge.snapRetainCount最新快照以及dataDir和dataLogDir中相应的事务日志，并删除剩余的快照

##### PURGE_INTERVAL
默认值为0，zookeeper的autopurge.purgeInterval，清除任务必须被触发的时间间隔（以小时为单位），设置为正整数以启用自动清除功能

##### MIN_SESSION_TIMEOUT
默认值为TICK_TIME*2，zookeeper的minSessionTimeout，用来设置服务器允许客户端协商的最小会话超时时间（以毫秒为单位）

##### MAX_SESSION_TIMEOUT
默认值为tickTime*20，zookeeper的maxSessionTimeout，用来设置服务器允许客户端协商的最大会话超时时间（以毫秒为单位）
