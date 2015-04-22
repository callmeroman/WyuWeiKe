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
	private String media_picturepath;
	private String user_id;
	public Media() {
		super();
	}
	public Media(int id, String media_name, String media_type,
			String media_native, String media_way, String media_describe,
			String media_path, int media_playfrequency,
			int media_sharefrequency, int media_polls, String media_uploadtime,
			String media_picturepath, String user_id) {
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
		this.media_picturepath = media_picturepath;
		this.user_id = user_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMedia_name() {
		return media_name;
	}
	public void setMedia_name(String media_name) {
		this.media_name = media_name;
	}
	public String getMedia_type() {
		return media_type;
	}
	public void setMedia_type(String media_type) {
		this.media_type = media_type;
	}
	public String getMedia_native() {
		return media_native;
	}
	public void setMedia_native(String media_native) {
		this.media_native = media_native;
	}
	public String getMedia_way() {
		return media_way;
	}
	public void setMedia_way(String media_way) {
		this.media_way = media_way;
	}
	public String getMedia_describe() {
		return media_describe;
	}
	public void setMedia_describe(String media_describe) {
		this.media_describe = media_describe;
	}
	public String getMedia_path() {
		return media_path;
	}
	public void setMedia_path(String media_path) {
		this.media_path = media_path;
	}
	public int getMedia_playfrequency() {
		return media_playfrequency;
	}
	public void setMedia_playfrequency(int media_playfrequency) {
		this.media_playfrequency = media_playfrequency;
	}
	public int getMedia_sharefrequency() {
		return media_sharefrequency;
	}
	public void setMedia_sharefrequency(int media_sharefrequency) {
		this.media_sharefrequency = media_sharefrequency;
	}
	public int getMedia_polls() {
		return media_polls;
	}
	public void setMedia_polls(int media_polls) {
		this.media_polls = media_polls;
	}
	public String getMedia_uploadtime() {
		return media_uploadtime;
	}
	public void setMedia_uploadtime(String media_uploadtime) {
		this.media_uploadtime = media_uploadtime;
	}
	public String getMedia_picturepath() {
		return media_picturepath;
	}
	public void setMedia_picturepath(String media_picturepath) {
		this.media_picturepath = media_picturepath;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "Media [id=" + id + ", media_name=" + media_name
				+ ", media_type=" + media_type + ", media_native="
				+ media_native + ", media_way=" + media_way
				+ ", media_describe=" + media_describe + ", media_path="
				+ media_path + ", media_playfrequency=" + media_playfrequency
				+ ", media_sharefrequency=" + media_sharefrequency
				+ ", media_polls=" + media_polls + ", media_uploadtime="
				+ media_uploadtime + ", media_picturepath=" + media_picturepath
				+ ", user_id=" + user_id + "]";
	}
	
	
	
}