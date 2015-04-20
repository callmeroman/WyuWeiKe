package com.user.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;


public class JdbcUtil {

	private static String drivername;
	private static String url;
	private static String username;
	private static String password;

	static {
		// 加载配置文件
		Properties p = new Properties();
		URL urls = JdbcUtil.class.getClassLoader().getResource(
				"com//user//util//mysql.properties");
		File file = new File(urls.getPath());
		System.out.println("mysql.properties:" + file.getPath());
		try {

			p.load(new FileInputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 提取配置属性
		drivername = p.getProperty("drivername");
		url = p.getProperty("url");
		username = p.getProperty("username");
		password = p.getProperty("password");

		// 注册驱动
		try {
			Class.forName(drivername);
			// 利用反射机制创建类对象
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static Connection getConn() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(ResultSet rs,PreparedStatement ps,Connection conn){
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	
/*	  public static void main(String[] args) { 
		  
//		  System.out.println(drivername);
		  Connection conn = JdbcUtil.getConn();
		  try {
			System.out.println(conn.isClosed());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	 */

}
