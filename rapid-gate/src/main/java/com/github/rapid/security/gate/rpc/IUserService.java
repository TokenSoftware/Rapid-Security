package com.github.rapid.security.gate.rpc;

import com.github.rapid.security.api.vo.authority.PermissionInfo;
import com.github.rapid.security.api.vo.user.UserInfo;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@FeignClient("admin-back")
@RequestMapping("api")
public interface IUserService {
  @RequestMapping(value = "/user/username/{username}", method = RequestMethod.GET)
  public UserInfo getUserByUsername(@PathVariable("username") String username);
  @RequestMapping(value = "/user/un/{username}/permissions", method = RequestMethod.GET)
  public List<PermissionInfo> getPermissionByUsername(@PathVariable("username") String username);
  @RequestMapping(value = "/permissions", method = RequestMethod.GET)
  List<PermissionInfo> getAllPermissionInfo();
}
