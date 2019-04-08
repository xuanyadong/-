package com.box.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.box.dao.CustomerDao;
import com.box.entity.Customer;
import com.box.entity.Items;
import com.box.entity.User;
import com.box.service.CustomerService;
@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;

	@Override
	public List<User> listCustomer(int page, int onePageCount) {
		int pages=(page-1)*onePageCount;
		return customerDao.listCustomer(pages,onePageCount);
	}

	@Override
	public int getAllCustomerCount() {
		return customerDao.getAllCustomerCount();
	}

	@Override
	public int deleteCustomer(int customerId) {
	
		return customerDao.deleteCustomer(customerId);
	}

	@Override
	public Customer selectCusById(int customerId) {
		return customerDao.selectCusById(customerId);
	}

	@Override
	public List<Items> selectAllStatus() {
		return customerDao.selectAllStatus();
	}

	@Override
	public List<User> getXjUser() {
		return customerDao.getXjUser();
	}

	@Override
	public List<User> getZxUser() {
		return customerDao.getZxUser();
	}

	@Override
	public List<User> getSmUser() {
		return customerDao.getSmUser();
	}

	@Override
	public List<User> getXsUser() {
		return customerDao.getXsUser();
	}

	@Override
	public List<User> getShUser() {
		return customerDao.getShUser();
	}

	@Override
	public void updateCustomer(Customer customer) {
        int userId=Integer.parseInt(customer.getOfStaff());
        User user=customerDao.selectUserById(userId);
        String userName = user.getUserName();
        customerDao.updateCustomer(customer,userId,userName);
	}

	@Override
	public void addCustomer(Customer customer) {
		 int userId=Integer.parseInt(customer.getOfStaff());
         User user=customerDao.selectUserById(userId);
         String userName = user.getUserName();
		 customerDao.addCustomer(customer,userId,userName);
	}

	@Override
	public List<Map<String,Integer>> listCustomerStatus(){
		return customerDao.listCustomerStatus();
	}

	
}
