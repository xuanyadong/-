package com.box.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.box.entity.DeptInfo;
import com.box.entity.PageInfo;
import com.box.service.DeptService;

@RequestMapping("/dept")
@Controller
public class DepartmentController {
	@Autowired
	private DeptService deptService;

	@ResponseBody
	@RequestMapping("/listDeptUser.do")
	public List<DeptInfo> listDeptUser() {
		List<DeptInfo> list = null;
		list = deptService.listDeptUser();
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/list.do")
	public PageInfo list(int count,int ma) {
		List<DeptInfo> list = null;
		list = deptService.list(count,ma);
		System.out.println(Arrays.toString(list.toArray()));
		int total=list.size();
		PageInfo pi = new PageInfo();
		pi.setCount(total);
		pi.setList(list);
		return pi;
	}
	
	@RequestMapping("/getDeptUserReport.do")
	public String getDeptUserReport(){
		return "deptUserReport";
	}
	@RequestMapping("/getDeptTaskReport.do")
	@ResponseBody
	public Map<String,Integer> getDeptTaskReport(int deptNo){
		List<DeptInfo> list = null;
		list = deptService.listDeptUserById(deptNo);
		Map<String,Integer> map=new HashMap<String, Integer>();
		for(DeptInfo dept:list){
			map.put("未完成", dept.getAllTask()-dept.getFinishedTask());
			map.put("已完成", dept.getFinishedTask());
		}
		return map;
	}
	@RequestMapping("/getDeptTask.do")
	public String getDeptTask(int deptNo,HttpSession session){
		session.setAttribute("deptNo", deptNo);
		return "deptTaskReport";
	}
}
