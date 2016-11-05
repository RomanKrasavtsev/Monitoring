class Redis
  # https://www.datadoghq.com/wp-content/uploads/2013/09/Understanding-the-Top-5-Redis-Performance-Metrics.pdf
  
  def initialize host, ip
    @host = host
    @ip = ip
  end

  # Number of clients connected to Redis
  def get_connected_clients
  end
  
  # Average time for the Redis server to respond to a request
  def get_latency
  end
  
  def get_hit_rate
    # keyspace_hits / (keyspace_hits + keyspace_misses)
  end
  
  # Amount of memory (in bytes) used by Redis 
  def get_used_memory
  end

  # Total number of commands processed per second
  def get_instantaneous_ops_per_sec
  end
  
  # Unix timestamp of last save to disk
  def get_rdb_last_save_time
    # rdb_last_save_time is < 3600 seconds (or your acceptable timeframe)
  end
  
  # Number of connections rejected due to hitting maxclient limit
  def get_rejected_connections
  end
 end

