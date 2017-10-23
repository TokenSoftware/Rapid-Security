package com.github.rapid.security.admin.rpc;

import com.github.rapid.security.admin.biz.GateLogBiz;
import com.github.rapid.security.admin.entity.GateLog;
import com.github.rapid.security.api.vo.log.LogInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@RequestMapping("api")
@Controller
public class LogService {
    @Autowired
    private GateLogBiz gateLogBiz;
    @RequestMapping(value="/log/save",method = RequestMethod.POST)
    public @ResponseBody void saveLog(@RequestBody LogInfo info){
        GateLog log = new GateLog();
        BeanUtils.copyProperties(info,log);
        gateLogBiz.insertSelective(log);
    }
}
