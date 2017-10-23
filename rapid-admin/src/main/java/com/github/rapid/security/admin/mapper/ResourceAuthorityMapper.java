package com.github.rapid.security.admin.mapper;

import com.github.rapid.security.admin.entity.ResourceAuthority;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public interface ResourceAuthorityMapper extends Mapper<ResourceAuthority> {
    public void deleteByAuthorityIdAndResourceType(@Param("authorityId")String authorityId,@Param("resourceType") String resourceType);
}