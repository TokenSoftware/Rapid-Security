package com.github.rapid.security.admin.mapper;

import com.github.rapid.security.admin.entity.Group;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public interface GroupMapper extends Mapper<Group> {
    public void deleteGroupMembersById (@Param("groupId") int groupId);
    public void deleteGroupLeadersById (@Param("groupId") int groupId);
    public void insertGroupMembersById (@Param("groupId") int groupId,@Param("userId") int userId);
    public void insertGroupLeadersById (@Param("groupId") int groupId,@Param("userId") int userId);
}