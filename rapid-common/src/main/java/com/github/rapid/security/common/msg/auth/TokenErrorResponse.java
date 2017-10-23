package com.github.rapid.security.common.msg.auth;

import com.github.rapid.security.common.constant.RestCodeConstants;
import com.github.rapid.security.common.msg.BaseResponse;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public class TokenErrorResponse extends BaseResponse {
    public TokenErrorResponse(String message) {
        super(RestCodeConstants.TOKEN_ERROR_CODE, message);
    }
}
