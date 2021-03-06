package com.box.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.box.entity.Customer;
import com.box.entity.Items;
import com.box.entity.User;

public interface UserDao {
	
	User login(String userNo);

	List<User> listUser(@Param("page")int pages,@Param("count") int onePageCount);

	int getAllUserCount();

	int deleteUser(int userId);

	User selectUserById(int userId);

	List<Items> selectAllDept();	

	List<Items> selectAllRole();

	String selectDeptNameById(@Param("deptId")int deptId);

	List<Items> selectAllStatus();

	void updateUser(User user);

	void addUser(User user);

	Map<String, Integer> getUserTask(int userId);
	
	List<Customer> selectUserCustomer(@Param("userId")int userId, @Param("page")int pages,@Param("count") int onePageCount);

	int getMyCustomerCount(int userId);

	Customer selectCustomerById(int customerId);

	void updateCustomer(@Param("customer")Customer customer);

	void updateMyTask(int userId);

	void updateAdminTask();

	int myTaskChange(int userId);
	
	int getNote(@Param("userId")int userId);
}
