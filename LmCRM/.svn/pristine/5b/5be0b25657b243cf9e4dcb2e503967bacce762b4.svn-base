package com.box.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.box.dao.UserDao;
import com.box.entity.Customer;
import com.box.entity.DeptInfo;
import com.box.entity.Items;
import com.box.entity.User;
import com.box.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	public User login(String userNo) {
		return userDao.login(userNo);
	}
	@Override
	public List<User> listUser(int page, int onePageCount) {
		int pages=(page-1)*onePageCount;
		return userDao.listUser(pages,onePageCount);
	}
	@Override
	public int getAllUserCount() {
		return userDao.getAllUserCount();
	}
	@Override
	public int deleteUser(int userId) {
		return userDao.deleteUser(userId);
	}
	@Override
	public User selectUserById(int userId) {
		return userDao.selectUserById(userId);
		}
	@Override
	public List<Items> selectAllDept() {
		return userDao.selectAllDept();
	}
	@Override
	public List<Items> selectRole(int deptId) {
		List<Items> roles=userDao.selectAllRole();
		String deptName=userDao.selectDeptNameById(deptId);
		List<Items> deptRole=new ArrayList<Items>();
		 deptName=deptName.substring(0, 2);
		for(Items role:roles){
			if(role.getItemName().contains(deptName)){
				deptRole.add(role);
			}
		}
		return deptRole;
	}
	@Override
	public List<Items> selectAllStatus() {
		return userDao.selectAllStatus();
	}
	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	@Override
	public void addUser(User user) {
        String joinTime=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        user.setJoinTime(joinTime);
        userDao.addUser(user);
	}
	@Override
	public Map<String, Integer> getUserTask(int userId) {
		return userDao.getUserTask(userId);
	}
	@Override
	public List<Customer> selectUserCustomer(int userId,int page, int onePageCount) {
		int pages=(page-1)*onePageCount;
		return userDao.selectUserCustomer(userId,pages,onePageCount);
	}
	@Override
	public int getMyCustomerCount(int userId) {
		return userDao.getMyCustomerCount(userId);
	}
	@Override
	public Customer selectCustomerById(int customerId) {
		
		return userDao.selectCustomerById(customerId);
	}
	@Override
	public void updateMyTask(Customer customer, int userId) {
		userDao.updateCustomer(customer);
		userDao.updateMyTask(userId);
		userDao.updateAdminTask();
		
	}
	@Override
	public int myTaskChange(int userId) {
		
		return userDao.myTaskChange(userId);
	}
	@Override
	public int getNote(int userId) {
		return userDao.getNote(userId);
	}
}
