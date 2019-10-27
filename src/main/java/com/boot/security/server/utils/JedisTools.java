package com.boot.security.server.utils;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.io.Serializable;
import java.util.Collections;

public class JedisTools {
	private static JedisPool jedisPool = null;
	/**
	 * 初始化Redis连接池
	 */
	static {
		try {
			JedisPoolConfig config = new JedisPoolConfig();
			config.setMaxTotal(50);
			config.setMaxIdle(5);
			config.setMaxWaitMillis(200000);
			config.setTestOnBorrow(true);
			jedisPool = new JedisPool(config, "114.67.105.222", 6379, 200000);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取Jedis实例
	 * 
	 * @return
	 */
	public synchronized static Jedis getResource() {
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

	/**
	 * 释放jedis资源
	 * 
	 * @param jedis
	 */
	public static void returnResource(final Jedis jedis) {
		if (jedis != null) {
			jedisPool.returnResource(jedis);
		}
	}

	/**
	 * 获取redis键值-object
	 * 
	 * @param key
	 * @return
	 */
//	public static Object getObject(String key) {
//		Jedis jedis = null;
//		try {
//			jedis = getResource();
//			byte[] bytes = jedis.get(key.getBytes());
//			if (!StringUtils.isEmpty(bytes)) {
//				return SerializableUtil.unserializable(bytes);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			returnResource(jedis);
//		}
//		return null;
//	}

	/**
	 * 设置redis键值-object
	 * 
	 * @param key
	 * @param value
	 * @return
	 */
//	public static boolean setObject(String key, Object value) {
//		boolean flag = false;
//		Jedis jedis = null;
//		try {
//			jedis = getResource();
//			return "OK".equals(jedis.set(key.getBytes(), SerializableUtil.serializable(value)));
//		} catch (Exception e) {
//			e.printStackTrace();
//			return flag;
//		} finally {
//			returnResource(jedis);
//		}
//	}

//	public static boolean setObject(String key, Object value, int expiretime) {
//		boolean result = false;
//		Jedis jedis = null;
//		try {
//			jedis = getResource();
//			return "OK".equals(jedis.setex(key.getBytes(), expiretime, SerializableUtil.serializable(value)));
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			returnResource(jedis);
//		}
//		return result;
//	}

	/**
	 * 删除key
	 */
	public static boolean delkeyObject(String key) {
		Jedis jedis = null;
		try {
			jedis = getResource();
			return 1 == jedis.del(key.getBytes());
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			returnResource(jedis);
		}
	}

	/* 存在某个Key */
	public static Boolean existsObject(String key) {
		Jedis jedis = null;
		try {
			jedis = getResource();
			return jedis.exists(key.getBytes());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			returnResource(jedis);
		}
	}

	/* 设置分布式锁 */
	public static boolean tryGetDistributedLock(String lockKey, String requestId, int expireTime) {
		Jedis jedis = null;
		try {
			jedis = getResource();
			String result = jedis.set(lockKey, requestId, "NX", "PX", expireTime);
			if ("OK".equals(result)) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			returnResource(jedis);
		}
		return false;
	}

	/* 解除分布式锁 */
	public static boolean releaseDistributedLock(String lockKey, String requestId) {
		Jedis jedis = null;
		try {
			jedis = getResource();
			String script = "if redis.call('get', KEYS[1]) == ARGV[1] then return redis.call('del', KEYS[1]) else return 0 end";
			Object result = jedis.eval(script, Collections.singletonList(lockKey),
					Collections.singletonList(requestId));
			if (result instanceof Long && 1 == (Long) result) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			returnResource(jedis);
		}
		return false;
	}

	/* 设置字符串结果 */
	public static boolean set(String key, String value) {
		Jedis jedis = null;
		try {
			jedis = getResource();
			String result = jedis.set(key, value);
			if ("OK".equals(result)) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			returnResource(jedis);
		}
		return false;
	}

	/* 设置字符串结果带过期时间 */
	public static boolean set(String key, String value, int expiretime) {
		Jedis jedis = null;
		try {
			jedis = getResource();
			String result = jedis.setex(key, expiretime, value);
			if ("OK".equals(result)) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			returnResource(jedis);
		}
		return false;
	}

	/* 获得字符串结果 */
	public static String get(String key) {
		Jedis jedis = null;
		try {
			jedis = getResource();
			String result = jedis.get(key);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			returnResource(jedis);
		}
		return null;
	}
	
	
	public static void main(String[] args) {
		set("hemuyi", "haha");
		String string = get("hemuyi");
		System.out.println(string);
	}

}
