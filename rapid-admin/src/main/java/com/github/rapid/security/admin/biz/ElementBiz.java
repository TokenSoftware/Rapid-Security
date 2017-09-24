package com.github.rapid.security.admin.biz;

import com.github.rapid.security.admin.mapper.ElementMapper;
import com.github.rapid.security.admin.entity.Element;
import com.github.rapid.security.common.biz.BaseBiz;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ElementBiz extends BaseBiz<ElementMapper,Element> {
    public List<Element> getAuthorityElementByUserId(String userId){
       return mapper.selectAuthorityElementByUserId(userId);
    }
    public List<Element> getAuthorityElementByUserId(String userId,String menuId){
        return mapper.selectAuthorityMenuElementByUserId(userId,menuId);
    }
}
