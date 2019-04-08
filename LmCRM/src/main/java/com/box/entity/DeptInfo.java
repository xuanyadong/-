package com.box.entity;

public class DeptInfo {
	private int deptNo;
	private String deptName;
	private String deptManager;
	private int numb;
	private int allTask;
	private int finishedTask;
	
	public DeptInfo() {
		super();
	}
	
	public DeptInfo(int deptNo, String deptName, String deptManager, int numb, int allTask, int finishedTask) {
		super();
		this.deptNo = deptNo;
		this.deptName = deptName;
		this.deptManager = deptManager;
		this.numb = numb;
		this.allTask = allTask;
		this.finishedTask = finishedTask;
	}

	public int getFinishedTask() {
		return finishedTask;
	}
	public void setFinishedTask(int finishedTask) {
		this.finishedTask = finishedTask;
	}
	public int getAllTask() {
		return allTask;
	}
	public void setAllTask(int allTask) {
		this.allTask = allTask;
	}
	public int getNumb() {
		return numb;
	}
	public void setNumb(int numb) {
		this.numb = numb;
	}
	public int getDeptNo() {
		return deptNo;
	}
	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDeptManager() {
		return deptManager;
	}
	public void setDeptManager(String deptManager) {
		this.deptManager = deptManager;
	}

	@Override
	public String toString() {
		return "DeptInfo [deptNo=" + deptNo + ", deptName=" + deptName + ", deptManager=" + deptManager + ", numb="
				+ numb + ", allTask=" + allTask + ", finishedTask=" + finishedTask + "]";
	}
	
}
