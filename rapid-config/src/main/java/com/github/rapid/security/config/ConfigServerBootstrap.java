package com.github.rapid.security.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RestController;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/

@Configuration
@EnableAutoConfiguration
@RestController
@EnableConfigServer
public class ConfigServerBootstrap {
    public static void main(String[] args) {
        SpringApplication.run(ConfigServerBootstrap.class, args);
    }
}
