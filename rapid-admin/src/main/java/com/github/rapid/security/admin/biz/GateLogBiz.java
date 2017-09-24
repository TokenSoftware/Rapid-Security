package com.github.rapid.security.admin.biz;

import com.github.rapid.security.admin.entity.GateLog;
import com.github.rapid.security.admin.mapper.GateLogMapper;
import com.github.rapid.security.common.biz.BaseBiz;
import org.springframework.stereotype.Service;

@Service
public class GateLogBiz extends BaseBiz<GateLogMapper,GateLog> {

    @Override
    public void insert(GateLog entity) {
        mapper.insert(entity);
    }

    @Override
    public void insertSelective(GateLog entity) {
        mapper.insertSelective(entity);
    }
}
