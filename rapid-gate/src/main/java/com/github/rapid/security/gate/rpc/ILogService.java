package com.github.rapid.security.gate.rpc;

import com.github.rapid.security.api.vo.log.LogInfo;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@FeignClient("admin-back")
public interface ILogService {
  @RequestMapping(value="/api/log/save",method = RequestMethod.POST)
  public void saveLog(LogInfo info);
}
