package com.box.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.box.entity.DeptInfo;

public interface DeptDao {

	List<DeptInfo> listDeptUser();

	List<DeptInfo> list(@Param("pageCount")int pageCount,@Param("page")int page);

	List<DeptInfo> listDeptUserById(@Param("deptNo")int deptNo);

	
}
