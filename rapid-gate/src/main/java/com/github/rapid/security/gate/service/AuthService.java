package com.github.rapid.security.gate.service;


import com.github.rapid.security.gate.vo.FrontUser;

public interface AuthService {
    String login(String clientId, String secret);
    String refresh(String oldToken);
    Boolean validate(String token, String resource);
    FrontUser getUserInfo(String token);
    Boolean invalid(String token);
}
