package com.github.rapid.security.gate.biz;

import com.github.rapid.security.api.vo.user.UserInfo;
import com.github.rapid.security.gate.rpc.IUserService;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@Service
public class UserSecurity {
    @Lazy
    @Autowired
    private IUserService userService;

    @HystrixCommand(fallbackMethod = "fallbackMethod")
    public UserInfo getUserByUsername(String username){
        return userService.getUserByUsername(username);
    }
    public UserInfo fallbackMethod(String username){
        return new UserInfo();
    }
}
