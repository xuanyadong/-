package com.box.entity;

import java.io.Serializable;
import java.util.List;

public class PageInfo implements Serializable{

	private static final long serialVersionUID = 3444007526867205523L;
	private List<?> list;
	private int count; 
	private int totalPage; 
	private int pageIndex; 
	private int pageSize=5;
	private int norepeatCount;
	private String msg;
	private int code;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getNorepeatCount() {
		return norepeatCount;
	}
	public void setNorepeatCount(int norepeatCount) {
		this.norepeatCount = norepeatCount;
	}
	public List<?> getList() {
		return list;
	}
	public void setList(List<?> list) {
		this.list = list;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public static int countTotalPage(final int pageSize, final int allRow) {
		int totalPage = allRow % pageSize == 0 ? allRow / pageSize : allRow / pageSize + 1;
		return totalPage;
	}

	
	public static int countOffset(final int pageSize, final int pageIndex) {
		final int offset = pageSize * (pageIndex - 1);
		return offset;
	}

	
	public static int countpageIndex(int page) {
		final int curPage = (page == 0 ? 1 : page);
		return curPage;
	}
}
