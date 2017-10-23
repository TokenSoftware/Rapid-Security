package com.github.rapid.security.admin.rest;

import com.github.rapid.security.admin.biz.UserBiz;
import com.github.rapid.security.admin.entity.User;
import com.github.rapid.security.common.rest.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@Controller
@RequestMapping("user")
public class UserController extends BaseController<UserBiz,User> {

//    @RequestMapping(value = "/page",method = RequestMethod.GET)
//    @ResponseBody
//    public TableResultResponse<Object> page(@RequestParam(defaultValue = "10") int limit, @RequestParam(defaultValue = "1")int page, String name){
//        Example example = new Example(User.class);
//        if(StringUtils.isNotBlank(name)) {
//            example.createCriteria().andLike("name", "%" + name + "%");
//            example.or().andLike("username", "%" + name + "%");
//        }
//        Page<Object> result = PageHelper.startPage(page, limit);
//        baseBiz.selectByExample(example);
//        return new TableResultResponse<Object>(result.getTotal(),result.getResult());
//    }


}
