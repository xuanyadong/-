package com.box.service;

import java.util.List;

import com.box.entity.DeptInfo;

public interface DeptService {


	List<DeptInfo> list(int count, int ma);

	List<DeptInfo> listDeptUser();

	List<DeptInfo> listDeptUserById(int deptNo);

}
