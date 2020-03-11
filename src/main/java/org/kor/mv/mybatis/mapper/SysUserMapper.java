package org.kor.mv.mybatis.mapper;

import org.kor.mv.mybatis.pojo.SysUser;

public interface SysUserMapper {

	int deleteByPrimaryKey(String id);

	int insert(SysUser record);

	int insertSelective(SysUser record);

	SysUser selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(SysUser record);

	int updateByPrimaryKey(SysUser record);
	
	SysUser findSysUserByUserCode(String username);

	
}