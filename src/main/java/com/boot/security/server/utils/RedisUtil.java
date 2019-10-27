package com.boot.security.server.utils;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public final class RedisUtil {
    
    private static String ADDR = "114.67.105.222";
    private static int PORT = 6379;
    private static String AUTH = null;
    private static int MAX_ACTIVE = 1024;
    private static int MAX_IDLE = 200;
    private static int MAX_WAIT = 10000;
    private static int TIMEOUT = 10000;
    private static boolean TEST_ON_BORROW = true;
    private static JedisPool jedisPool = null;
    
    static {
        try {
            JedisPoolConfig config = new JedisPoolConfig();
            config.setMaxIdle(MAX_IDLE);
            config.setMaxWaitMillis(MAX_WAIT);
            config.setTestOnBorrow(TEST_ON_BORROW);
            jedisPool = new JedisPool(config, ADDR, PORT, TIMEOUT, AUTH);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public synchronized static Jedis getJedis() {
        try {
            if (jedisPool != null) {
                Jedis resource = jedisPool.getResource();
                return resource;
            } else {
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public static void returnResource(final Jedis jedis) {
        if (jedis != null) {
        	jedis.close();
        }
    }
    
    public static void main(String[] args) {
    	Jedis jedis = getJedis();
    	jedis.hset("hefei", "haha", "muyi");
    	System.out.println(jedis.hget("hefei", "haha"));
	}
}