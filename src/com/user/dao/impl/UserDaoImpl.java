package com.user.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.management.RuntimeErrorException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.util.DBCPUtil;
import com.user.util.JdbcUtil;

public class UserDaoImpl implements IUserDao {
	private QueryRunner qr=new QueryRunner(DBCPUtil.getDataSource());
//存储
//	public boolean saveuser(User user) {
//		
//		//Hibernate.save(user);
//		// (1)获取连接
//				Connection conn = JdbcUtil.getConn();
//				// (2)声明相关对象
//				PreparedStatement ps = null;
//				// (3)编写SQL
//				String sql = "insert into myuser(user_id,user_password,user_name,user_sex,user_academy,user_phone,user_qq,user_email) values"
//						+ "(?,?,?,?,?,?,?,?)";
//				int result = 0;
//				try {
//					ps = conn.prepareStatement(sql);
//					ps.setString(1, user.getUser_id());
//					ps.setString(2, user.getUser_password());
//					ps.setString(3, user.getUser_name());
//					ps.setString(4, user.getUser_sex());
//					ps.setString(5, user.getUser_academy());
//					ps.setString(6, user.getUser_phone());
//					ps.setString(7, user.getUser_qq());
//					ps.setString(8, user.getUser_email());
//					result = ps.executeUpdate();
//
//				} catch (SQLException e) {
//					e.printStackTrace();
//				} finally {
//					JdbcUtil.close(null,ps, conn);
//				}
//				if (result == 1) {
//					return true;
//				}
//		
//		return false;
//	}
	
	
//查询
//	public User getUserByUser_id(String user_id) {
//		// (1)获取连接
//				Connection conn = JdbcUtil.getConn();
//				// (2)声明相关对象
//				PreparedStatement ps = null;
//				ResultSet rs = null;
//				// (3)编写SQL
//				String sql = "select * from myuser where user_id=?";
//				int result = 0;
//				User user = null;
//				try {
//					ps = conn.prepareStatement(sql);
//					ps.setString(1, user_id);
//
//					rs = ps.executeQuery();
//					
//					while(rs.next()){
//						user =new User();
//						user.setUser_id(rs.getString(1));
//						user.setUser_password(rs.getString(2));
//						user.setUser_name(rs.getString(3));
//						user.setUser_sex(rs.getString(4));
//						user.setUser_academy(rs.getString(5));
//						user.setUser_phone(rs.getString(6));
//						user.setUser_qq(rs.getString(7));
//						user.setUser_email(rs.getString(8));
//						
//						
//					}
//
//				} catch (SQLException e) {
//					e.printStackTrace();
//				} finally {
//					JdbcUtil.close(rs,ps, conn);
//				}
//				return user;
//		
//	}


	public boolean upUserByid(User user) {
		String sql="update myuser set user_password=?,user_name=?,user_sex=?,user_academy=?,user_phone=?,user_qq=?,user_email=? where user_id=?";
		try {
			int i=qr.update(sql, user.getUser_password(),user.getUser_name(),user.getUser_sex(),user.getUser_academy(),user.getUser_phone(),user.getUser_qq(),user.getUser_email(),user.getUser_id());
			return i>0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
	}


	public List<User> getAllUser() {
		String sql="select * from myuser";
		try {
			return qr.query(sql, new BeanListHandler<User>(User.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}


	public User findUserByUser_idAndPassword(String user_id,String user_password) {
		String sql="select * from myuser where user_id=? and user_password=?";
		try {
			return qr.query(sql, new BeanHandler<User>(User.class),user_id,user_password);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public User getUserByUser_id(String user_id){
		String sql="select * from myuser where user_id=?";
		try {
			return qr.query(sql, new BeanHandler<User>(User.class),user_id);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}


	public boolean saveuser(User user) {
		String sql="insert into myuser(user_id,user_password,user_name,user_sex,user_academy,user_phone,user_qq,user_email) values (?,?,?,?,?,?,?,?)";
		try {
			 int i=qr.update(sql, user.getUser_id(),user.getUser_password(),user.getUser_name(),user.getUser_sex(),user.getUser_academy(),user.getUser_phone(),user.getUser_qq(),user.getUser_email());
			 return i>0;
		} catch (SQLException e) {
			throw  new RuntimeException(e);
		}
	}




}
