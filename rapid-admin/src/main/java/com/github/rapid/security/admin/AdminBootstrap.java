package com.github.rapid.security.admin;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
//@EnableDiscoveryClient  //激活eureka中的DiscoveryClient实现
@EnableEurekaClient
@EnableHystrix
@SpringBootApplication
@ServletComponentScan("com.github.rapid.security.admin.config.druid")
//@EnableRedisHttpSession
public class AdminBootstrap {
    public static void main(String[] args) {
        new SpringApplicationBuilder(AdminBootstrap.class).web(true).run(args);    }
}
