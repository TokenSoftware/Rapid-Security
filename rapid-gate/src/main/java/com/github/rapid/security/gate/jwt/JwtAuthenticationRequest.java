package com.github.rapid.security.gate.jwt;

import java.io.Serializable;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public class JwtAuthenticationRequest implements Serializable {

    private static final long serialVersionUID = -8445943548965154778L;

    private String username;
    private String password;


    public JwtAuthenticationRequest(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public JwtAuthenticationRequest() {
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
