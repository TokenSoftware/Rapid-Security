package com.github.rapid.security.gate.service;


import com.github.rapid.security.gate.vo.FrontUser;

/**
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public interface AuthService {
    /**
     * 用户登陆接口
     * @param clientId
     * @param secret
     * @return
     */
    String login(String clientId, String secret);

    /**
     * 刷新接口
     * @param oldToken
     * @return
     */
    String refresh(String oldToken);

    /**
     * 校验接口
     * @param token
     * @param resource
     * @return
     */
    Boolean validate(String token, String resource);

    /**
     * 获取用户信息
     * @param token
     * @return
     */
    FrontUser getUserInfo(String token);

    /**
     * 校验token 是否有效
     * @param token
     * @return
     */
    Boolean invalid(String token);
}
