package com.user.bean;

import java.util.List;

public class PageBean<T> {
	private int pc;// ��ǰҳ��page code
	private int tp;// ��ҳ��total page,�ɼ���������ʿ�ע�ͣ�ֱ��дgetTp()����
	private int tr;// �ܼ�¼��total record
	private int ps;// ÿҳ��¼��page size
	private List<T> beanList;// ��ǰҳ�ļ�¼
	public PageBean() {
		super();
	}
	public PageBean(int pc, int tp, int tr, int ps, List<T> beanList) {
		super();
		this.pc = pc;
		this.tp = tp;
		this.tr = tr;
		this.ps = ps;
		this.beanList = beanList;
	}
	public int getPc() {
		return pc;
	}
	public void setPc(int pc) {
		this.pc = pc;
	}
	/*
	 * ������ҳ��
	 * @return
	 */
	public int getTp() {
		//��ҳ��tp=�ܼ�¼��tr/ÿҳ��¼��ps
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
