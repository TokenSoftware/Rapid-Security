package com.github.rapid.security.admin.rest;

import com.github.rapid.security.admin.biz.GateLogBiz;
import com.github.rapid.security.admin.entity.GateLog;
import com.github.rapid.security.common.rest.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
@Controller
@RequestMapping("gateLog")
public class GateLogController extends BaseController<GateLogBiz,GateLog> {
//    @RequestMapping(value = "/page",method = RequestMethod.GET)
//    @ResponseBody
//    public TableResultResponse<GateLog> page(@RequestParam(defaultValue = "10") int limit, @RequestParam(defaultValue = "1")int offset, String name){
//        Example example = new Example(GateLog.class);
//        if(StringUtils.isNotBlank(name)) {
//            example.createCriteria().andLike("menu", "%" + name + "%");
//        }
//        int count = baseBiz.selectCountByExample(example);
//        PageHelper.startPage(offset, limit);
//        return new TableResultResponse<GateLog>(count,baseBiz.selectByExample(example));
//    }
}
