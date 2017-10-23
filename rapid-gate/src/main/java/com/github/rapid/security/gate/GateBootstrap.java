package com.github.rapid.security.gate;


import com.github.rapid.security.gate.utils.DBLog;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@SpringBootApplication
@EnableDiscoveryClient
@EnableFeignClients
@EnableZuulProxy
//@EnableRedisHttpSession(redisFlushMode = RedisFlushMode.IMMEDIATE)
public class GateBootstrap {
    public static void main(String[] args) {
        DBLog.getInstance().start();
        SpringApplication.run(GateBootstrap.class, args);
    }
}
