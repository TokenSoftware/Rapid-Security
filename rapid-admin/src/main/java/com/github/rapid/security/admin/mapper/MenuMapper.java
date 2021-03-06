package com.github.rapid.security.admin.mapper;

import com.github.rapid.security.admin.entity.Menu;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public interface MenuMapper extends Mapper<Menu> {
    public List<Menu> selectMenuByAuthorityId(@Param("authorityId") String authorityId,@Param("authorityType") String authorityType);

    /**
     * 根据用户和组的权限关系查找用户可访问菜单
     * @param userId
     * @return
     */
    public List<Menu> selectAuthorityMenuByUserId (@Param("userId") int userId);

    /**
     * 根据用户和组的权限关系查找用户可访问的系统
     * @param userId
     * @return
     */
    public List<Menu> selectAuthoritySystemByUserId (@Param("userId") int userId);
}