package com.github.rapid.security.admin.config;

import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.netflix.hystrix.contrib.metrics.eventstream.HystrixMetricsStreamServlet;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
//@Configuration
public class HystrixConfig {

//    @Bean
    public HystrixMetricsStreamServlet hystrixMetricsStreamServlet(){
        return new HystrixMetricsStreamServlet();
    }

//    @Bean
    public ServletRegistrationBean registration(HystrixMetricsStreamServlet servlet){
        ServletRegistrationBean registrationBean = new ServletRegistrationBean();
        registrationBean.setServlet(servlet);
        registrationBean.setEnabled(true);//是否启用该registrationBean
        registrationBean.addUrlMappings("/hystrix.stream");
        return registrationBean;
    }
}
