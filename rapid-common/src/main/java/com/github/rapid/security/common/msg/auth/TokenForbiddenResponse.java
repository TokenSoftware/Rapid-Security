package com.github.rapid.security.common.msg.auth;

import com.github.rapid.security.common.constant.RestCodeConstants;
import com.github.rapid.security.common.msg.BaseResponse;

public class TokenForbiddenResponse  extends BaseResponse {
    public TokenForbiddenResponse(String message) {
        super(RestCodeConstants.TOKEN_FORBIDDEN_CODE, message);
    }
}
