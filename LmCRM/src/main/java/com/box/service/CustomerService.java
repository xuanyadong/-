package com.box.service;

import java.util.List;
import java.util.Map;

import com.box.entity.Customer;
import com.box.entity.Items;
import com.box.entity.User;

public interface CustomerService {

	List<User> listCustomer(int page, int onePageCount);

	int getAllCustomerCount();

	int deleteCustomer(int customerId);

	Customer selectCusById(int customerId);

	List<Items> selectAllStatus();

	List<User> getXjUser();

	List<User> getZxUser();

	List<User> getSmUser();

	List<User> getXsUser();

	List<User> getShUser();

	void updateCustomer(Customer customer);

	void addCustomer(Customer customer);

	List<Map<String, Integer>> listCustomerStatus();

	


}
