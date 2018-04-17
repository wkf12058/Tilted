package redis.test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import redis.clients.jedis.Jedis;

public class redisTest {

	// 连接redis服务
	private static Jedis jedis = new Jedis("localhost");
	
	/**
	 * 获取redis中全部的key值
	 */
	public static void getAllKey() {
		// 获取全部的key
		Set<String> keys = jedis.keys("*");
		Iterator<String> it = keys.iterator();
		
		//循环显示
		while (it.hasNext()) {
			String key = it.next();
			System.out.println(key);
		}
		
	}
	
	public static void setRedis(String key,String value){
		jedis.set(key, value);
		System.out.println("Redis:"+key+"-"+value);
	}
	
	public static void getRedis(String key){
		String value=jedis.get(key);
		System.out.println("Redis:"+key+"-"+value);
	}
	
	/**
	 * redis添加集合  输出是 栈。后入先出
	 */
	public static void addList(){
        //存储数据到列表中
//        jedis.lpush("site-list", "3");
//        jedis.lpush("site-list", "2");
//        jedis.lpush("site-list", "1");
        // 获取存储的数据并输出
        List<String> list = jedis.lrange("site-list", 0 ,-1);
        for(int i=0; i<list.size(); i++) {
            System.out.println("列表项序号 : "+list.get(i));
        }
	}
	
	public static void setList(String key,String value){
		
	}
	
	public static void main(String[] args) {
		
		redisTest.addList();
	}
}
