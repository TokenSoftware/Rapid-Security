package com.github.rapid.security.admin.mapper;

import com.github.rapid.security.admin.entity.Element;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public interface ElementMapper extends Mapper<Element> {
    public List<Element> selectAuthorityElementByUserId(@Param("userId")String userId);
    public List<Element> selectAuthorityMenuElementByUserId(@Param("userId")String userId,@Param("menuId")String menuId);
    public List<Element> selectAuthorityElementByClientId(@Param("clientId")String clientId);

}