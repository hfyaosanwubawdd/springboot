package com.boot.security.server.utils;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
* @author HF
* @version 创建时间：2019年10月30日 下午2:04:48
* 类说明
 * @param <E>
*/
public class ThreadPoolSingleton {
	
	private final int CORE_POOL_SIZE = 10;
	private final int MAX_POOL_SIZE = 5000;
	private final long KEEP_ALIVE_TIME = 120L;
	
	private ThreadPoolExecutor threadPool;
	private  BlockingQueue<Runnable> queue;
	
	private static class ThreadPoolSingletonInstance {
		private static final ThreadPoolSingleton INSTANCE = new ThreadPoolSingleton();
	}
	
	private ThreadPoolSingleton() {
		queue = new LinkedBlockingQueue<Runnable>(1);
		threadPool = new ThreadPoolExecutor(CORE_POOL_SIZE,MAX_POOL_SIZE, KEEP_ALIVE_TIME, TimeUnit.SECONDS,queue);
		threadPool.setRejectedExecutionHandler(new ThreadPoolExecutor.AbortPolicy());
	}
	
	public static ThreadPoolSingleton getinstance() {
		return ThreadPoolSingletonInstance.INSTANCE;
	}
	
	public void executeThread(Runnable task) {
		threadPool.execute(task);
	}

	public void shutdown() {
		threadPool.shutdown();
	}
}
