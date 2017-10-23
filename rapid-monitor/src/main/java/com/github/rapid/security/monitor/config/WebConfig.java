package com.github.rapid.security.monitor.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/hystrix/**").addResourceLocations(
                "classpath:/static/hystrix/");
        super.addResourceHandlers(registry);
    }

}
