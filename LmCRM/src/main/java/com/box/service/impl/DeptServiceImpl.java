package com.box.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.box.dao.DeptDao;
import com.box.entity.DeptInfo;
import com.box.service.DeptService;
@Service("deptService")
public class DeptServiceImpl implements DeptService {
	@Autowired
	private DeptDao deptDao;
	@Override
	public List<DeptInfo> listDeptUser() {
		return deptDao.listDeptUser();
	}
	@Override
	public List<DeptInfo> list(int count, int ma) {
		int pageCount=count;
		int page=(ma-1)*count;
		return deptDao.list(pageCount,page);
	}
	@Override
	public List<DeptInfo> listDeptUserById(int deptNo) {
		return deptDao.listDeptUserById(deptNo);
	}

}
