package com.box.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.box.entity.Customer;
import com.box.entity.Items;
import com.box.entity.PageInfo;
import com.box.entity.User;
import com.box.service.UserService;

@RequestMapping("/user")
@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/toLogin.do")
	public String toLogin() {
		return "login";
	}

	@RequestMapping("/toPage.do")
	public String toPage(String pageName) {
		return pageName;
	}

	@RequestMapping("/login.do")
	public String login(String userNo, String passWord, String userType, HttpSession session) {
		if ("管理员".equals(userType)) {
			User user = userService.login(userNo);
			System.out.println(user);
			if (user != null) {
				if (passWord.equals(user.getPass()) && userType.equals(user.getRole())) {
					session.setAttribute("user", user);
					return "admin";
				} else if (!passWord.equals(user.getPass())) {
					session.setAttribute("err", "密码错误");
				} else if (!"管理员".equals(user.getRole())) {
					session.setAttribute("err", "用户类型不匹配");
				}
			} else {
				session.setAttribute("err", "暂无此人");
			}
		} else {
			User user = userService.login(userNo);
			System.out.println(user);
			if (user != null) {
				if (passWord.equals(user.getPass()) && !"管理员".equals(userType)) {
					if (!user.getRole().equals("管理员")) {
						session.setAttribute("user", user);
						return "staff";
					}
				} else if (!passWord.equals(user.getPass())) {
					session.setAttribute("err", "密码错误");
				} else if ("管理员".equals(user.getRole())) {
					session.setAttribute("err", "用户类型不匹配");
				}
			} else {
				session.setAttribute("err", "暂无此人");
			}
		}
		return "login";
	}

	@ResponseBody
	@RequestMapping("/listUser.do")
	public PageInfo listUser(int page, int onePageCount) {
		List<User> list = userService.listUser(page, onePageCount);
		int count = userService.getAllUserCount();
		PageInfo info = new PageInfo();
		info.setList(list);
		info.setCount(count);
		return info;
	}

	@ResponseBody
	@RequestMapping("/deleteUser.do")
	public int deleteUser(int userId) {
		int row = userService.deleteUser(userId);
		if (row != 0) {
			return row;
		}
		return 0;

	}

	@RequestMapping("/editUser.do")
	public String editUser(int userId, HttpSession session) {
		User user = userService.selectUserById(userId);
		List<Items> depts = userService.selectAllDept();
		List<Items> status = userService.selectAllStatus();
		session.setAttribute("isOnjob", status);
		session.setAttribute("dept", depts);
		session.setAttribute("user", user);
		return "editOrAddUser";
	}

	@ResponseBody
	@RequestMapping("/getRole.do")
	public List<Items> getRole(int deptId) {
		List<Items> deptRole = userService.selectRole(deptId);
		return deptRole;
	}

	@RequestMapping("/updateUser.do")
	public void updateUser(User user) {
		if (user.getUserId() != 0) {
			userService.updateUser(user);
		} else {
			userService.addUser(user);
		}
	}

	@RequestMapping("/addUser.do")
	public String addUser(HttpSession session) {
		User user = new User();
		List<Items> depts = userService.selectAllDept();
		List<Items> status = userService.selectAllStatus();
		session.setAttribute("isOnjob", status);
		session.setAttribute("dept", depts);
		session.setAttribute("user", user);
		return "editOrAddUser";
	}

	@ResponseBody
	@RequestMapping("/deleteUserByIds.do")
	public Map<String, String> deleteUserByIds(String ids) {
		String id[] = ids.split(",");
		for (String userId : id) {
			userService.deleteUser(Integer.parseInt(userId));
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("result", "删除成功");
		return map;

	}

	@RequestMapping("/getUserTask.do")
	public String getDeptTask(int userId, HttpSession session) {
		session.setAttribute("userId", userId);
		return "userTaskReport";
	}

	@RequestMapping("/getUserTaskReport.do")
	@ResponseBody
	public Map<String, Integer> getUserTaskReport(int userId) {
		Map<String, Integer> userTask = userService.getUserTask(userId);
		return userTask;
	}

	@ResponseBody
	@RequestMapping("/listMyCustom.do")
	public PageInfo listMyCustom(int userId, int page, int onePageCount) {
		List<Customer> list = userService.selectUserCustomer(userId, page, onePageCount);
		int count = userService.getMyCustomerCount(userId);
		PageInfo info = new PageInfo();
		info.setList(list);
		info.setCount(count);
		return info;

	}

	@RequestMapping("toUserCustomer.do")
	public String toUserCustomer(int userId, HttpSession session) {
		session.setAttribute("userId", userId);
		return "userCustomerInfo";
	}

	@RequestMapping("/submitCustomer.do")
	public String submitCustomer(int userId, int customerId, HttpSession session) {
		Customer customer = userService.selectCustomerById(customerId);
		session.setAttribute("userId", userId);
		session.setAttribute("customer", customer);
		return "submitCustomer";

	}

	@RequestMapping("/updateMyTask.do")
	public void updateMyTask(Customer customer, int userId) {
		userService.updateMyTask(customer, userId);
	}

	@RequestMapping("/myTaskChange.do")
	public Map<String, Integer> myTaskChange(int userId) {
		int total = userService.myTaskChange(userId);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("total", total);
		return map;

	}
}
