package com.box.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.box.entity.Customer;
import com.box.entity.Items;
import com.box.entity.User;

public interface CustomerDao {

	List<User> listCustomer(@Param("page")int pages,@Param("count")int onePageCount);

	int getAllCustomerCount();

	int deleteCustomer(int customerId);

	Customer selectCusById(int customerId);

	List<Items> selectAllStatus();

	List<User> getXjUser();

	List<User> getZxUser();

	List<User> getSmUser();

	List<User> getXsUser();

	List<User> getShUser();

	User selectUserById(int userId);

	void updateCustomer(@Param("customer")Customer customer, @Param("userId")int userId, @Param("userName")String userName);

	void addCustomer(@Param("customer")Customer customer,@Param("userId")int userId,@Param("userName")String userName);

	void updateUserAllTask(int userId);
	
	List<Map<String,Integer>> listCustomerStatus();

	

}
