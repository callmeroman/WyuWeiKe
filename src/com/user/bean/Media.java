package com.user.bean;

public class Media {
	private int id;
	private String media_name;
	private String media_type;
	private String media_native;
	private String media_way;
	private String media_describe;
	private String media_path;
	private int media_playfrequency;
	private int media_sharefrequency;
	private int media_polls;
	private String media_uploadtime ;
	private String media_picture;
	public Media() {
		super();
	}
	public Media(int id, String media_name, String media_type,
			String media_native, String media_way, String media_describe,
			String media_path, int media_playfrequency,
			int media_sharefrequency, int media_polls, String media_uploadtime,
			String media_picture) {
		super();
		this.id = id;
		this.media_name = media_name;
		this.media_type = media_type;
		this.media_native = media_native;
		this.media_way = media_way;
		this.media_describe = media_describe;
		this.media_path = media_path;
		this.media_playfrequency = media_playfrequency;
		this.media_sharefrequency = media_sharefrequency;
		this.media_polls = media_polls;
		this.media_uploadtime = media_uploadtime;
		this.media_picture = media_picture;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getmedia_name() {
		return media_name;
	}
	public void setmedia_name(String media_name) {
		this.media_name = media_name;
	}
	public String getmedia_type() {
		return media_type;
	}
	public void setmedia_type(String media_type) {
		this.media_type = media_type;
	}
	public String getmedia_native() {
		return media_native;
	}
	public void setmedia_native(String media_native) {
		this.media_native = media_native;
	}
	public String getmedia_way() {
		return media_way;
	}
	public void setmedia_way(String media_way) {
		this.media_way = media_way;
	}
	public String getmedia_describe() {
		return media_describe;
	}
	public void setmedia_describe(String media_describe) {
		this.media_describe = media_describe;
	}
	public String getmedia_path() {
		return media_path;
	}
	public void setmedia_path(String media_path) {
		this.media_path = media_path;
	}
	public int getmedia_playfrequency() {
		return media_playfrequency;
	}
	public void setmedia_playfrequency(int media_playfrequency) {
		this.media_playfrequency = media_playfrequency;
	}
	public int getmedia_sharefrequency() {
		return media_sharefrequency;
	}
	public void setmedia_sharefrequency(int media_sharefrequency) {
		this.media_sharefrequency = media_sharefrequency;
	}
	public int getmedia_polls() {
		return media_polls;
	}
	public void setmedia_polls(int media_polls) {
		this.media_polls = media_polls;
	}
	public String getmedia_uploadtime() {
		return media_uploadtime;
	}
	public void setmedia_uploadtime(String media_uploadtime) {
		this.media_uploadtime = media_uploadtime;
	}
	public String getmedia_picture() {
		return media_picture;
	}
	public void setmedia_picture(String media_picture) {
		this.media_picture = media_picture;
	}
	@Override
	public String toString() {
		return "media [id=" + id + ", media_name=" + media_name
				+ ", media_type=" + media_type + ", media_native="
				+ media_native + ", media_way=" + media_way
				+ ", media_describe=" + media_describe + ", media_path="
				+ media_path + ", media_playfrequency=" + media_playfrequency
				+ ", media_sharefrequency=" + media_sharefrequency
				+ ", media_polls=" + media_polls + ", media_uploadtime="
				+ media_uploadtime + ", media_picture=" + media_picture + "]";
	}
	
}
