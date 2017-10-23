package com.github.rapid.security.gate.jwt;

import java.io.Serializable;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public class JwtAuthenticationResponse implements Serializable {
    private static final long serialVersionUID = 1250166508152483573L;

    private final String token;

    public JwtAuthenticationResponse(String token) {
        this.token = token;
    }

    public String getToken() {
        return this.token;
    }
}
