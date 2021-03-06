package com.user.bean;

import java.util.List;

public class PageBean<T> {
	private int pc;// 当前页码page code；									（servlet负责，以页面传值为准，否则为1）
	private int tp;// 总页数total page,由计算得来。故可注释，直接写getTp()方法；	（dao负责，使用select count（*））
	private int tr;// 总记录数total record								（servlet负责，直接指定）
	private int ps;// 每页记录数page size									（servlet负责，直接指定）
	private List<T> beanList;// 当前页的记录								（dao负责，使用limitx，y）
	private String url;//就是url后的条件									（servlet负责，）
	
	public PageBean(int pc, int tp, int tr, int ps, List<T> beanList) {
		super();
		this.pc = pc;
		this.tp = tp;
		this.tr = tr;
		this.ps = ps;
		this.beanList = beanList;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public PageBean() {
		super();
	}
	public int getPc() {
		return pc;
	}
	public void setPc(int pc) {
		this.pc = pc;
	}
	/*
	 * 计算总页数
	 * @return
	 */
	public int getTp() {
		//总页数tp=总记录数tr/每页记录数ps
		int tp=tr/ps;
		return tr%ps==0 ? tp:tp+1;
	}
	
//	public void setTp(int tp) {
//		this.tp = tp;
//	}
	public int getTr() {
		return tr;
	}
	public void setTr(int tr) {
		this.tr = tr;
	}
	public int getPs() {
		return ps;
	}
	public void setPs(int ps) {
		this.ps = ps;
	}
	public List<T> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}
	@Override
	public String toString() {
		return "PageBean [pc=" + pc + ", tp=" + tp + ", tr=" + tr + ", ps="
				+ ps + ", beanList=" + beanList + "]";
	}
	
}
