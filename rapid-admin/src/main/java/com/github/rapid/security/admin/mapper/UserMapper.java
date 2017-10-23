package com.github.rapid.security.admin.mapper;

import com.github.rapid.security.admin.entity.User;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
/**
 *
 * @author sun-abel
 * @create 2017-10-23 下午6:38
 **/
public interface UserMapper extends Mapper<User> {
    public List<User> selectMemberByGroupId(@Param("groupId") int groupId);
    public List<User> selectLeaderByGroupId(@Param("groupId") int groupId);
}