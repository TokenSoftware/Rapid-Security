package com.github.rapid.security.gate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@Controller
public class SecurityController {
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login() {
        return "login";
    }
}
