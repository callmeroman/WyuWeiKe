package com.user.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.user.bean.PageBean;
import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.util.DBCPUtil;

public class UserDaoImpl implements IUserDao {
	private QueryRunner qr=new QueryRunner(DBCPUtil.getDataSource());
//�洢
//	public boolean saveuser(User user) {
//		
//		//Hibernate.save(user);
//		// (1)��ȡ����
//				Connection conn = JdbcUtil.getConn();
//				// (2)������ض���
//				PreparedStatement ps = null;
//				// (3)��дSQL
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
	
	
//��ѯ
//	public User getUserByUser_id(String user_id) {
//		// (1)��ȡ����
//				Connection conn = JdbcUtil.getConn();
//				// (2)������ض���
//				PreparedStatement ps = null;
//				ResultSet rs = null;
//				// (3)��дSQL
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
	
	/*
	 * ��ѯ����
	 * @see com.user.dao.IUserDao#getAllUser(int, int)
	 */

	public PageBean<User> getAllUser(int pc,int ps) {
		try {
//			String sql="select * from myuser";
//			return qr.query(sql, new BeanListHandler<User>(User.class));
			/*pb=pagebean;  pc=��ǰҳ;  ps=ÿҳ��¼����   tr=�ܼ�¼����  tp=��ҳ��
			 * 1.����PageBean����pb
			 * 2.����pb��pc��ps
			 * 3.�õ�tr�����ø�pb
			 * 4.�õ�beanlist���ø�pb
			 * 5.����pb
			 */
			PageBean<User>pb=new PageBean<User>();//1
			pb.setPc(pc);//2
			pb.setPs(ps);
			/*
			 * 3.�õ�tr
			 */
			String sql="select count(*) from myuser";
			//ScalarHandler�����������ĳһ����¼(��)������ĳһ�е����ݴ�� Object
			Number number=(Number)qr.query(sql, new ScalarHandler());
			//intValue()��java.lang.Number��ķ���,��integer����ת����int�����int���ݡ�
			int tr=number.intValue();
			pb.setTr(tr);
			/*
			 * 4.�õ�beanList
			 */
			sql="select * from myuser order by user_id limit ?,?";
			List<User>beanList=qr.query(sql, new BeanListHandler<User>(User.class),(pc-1)*ps,ps);
			pb.setBeanList(beanList);
			return pb;//5
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


	public boolean addUser(User user) {
		String sql="insert into myuser(user_id,user_password,user_name,user_sex,user_academy,user_phone,user_qq,user_email) values (?,?,?,?,?,?,?,?)";
		try {
			 int i=qr.update(sql, user.getUser_id(),user.getUser_password(),user.getUser_name(),user.getUser_sex(),user.getUser_academy(),user.getUser_phone(),user.getUser_qq(),user.getUser_email());
			 return i>0;
		} catch (SQLException e) {
			throw  new RuntimeException(e);
		}
	}
	
	/*
	 *��������Ϸ�ҳ��ѯ�û����� 
	 */
	public PageBean<User> queryUser(User criteria,int pc,int ps) {
		try {
		/*pb=pagebean;  pc=��ǰҳ;  ps=ÿҳ��¼����   tr=�ܼ�¼����  tp=��ҳ��
		 * 0.��������װ��User������
		 * 1.����PageBean����pb
		 * 2.����pb��pc��ps
		 * 3.�õ�tr�����ø�pb
		 * 4.�õ�beanlist���ø�pb
		 * 5.����pb
		 */
		PageBean<User> pb=new PageBean<User>();
		pb.setPc(pc);
		pb.setPs(ps);
		
		/*
		 * �õ�tr��ƴ��sql���
		 */
		/*
		 * 1.����һ��sql����ǰ�벿
		 * */
		StringBuilder cntSql=new StringBuilder("select count(*) from myuser");
		StringBuilder whereSql = new StringBuilder(" where 1=1");
		/*
		 * 2.�ж������������sql���׷��where�Ӿ�
		 * */
		/*
		 * 3.����һ��ArrayList������װ�ز���
		 * */
		List<Object> params=new ArrayList<Object>();
		
		String user_id=criteria.getUser_id();
		if(user_id != null && !user_id.trim().isEmpty()) {
			whereSql.append(" and user_id like ?");
			params.add("%" + user_id + "%");
		}
		String user_name=criteria.getUser_name();
		if(user_name != null && !user_name.trim().isEmpty()) {
			whereSql.append(" and user_name like ?");
			params.add("%" + user_name + "%");
		}
		
		String user_sex = criteria.getUser_sex();
		if(user_sex != null && !user_sex.trim().isEmpty()) {
			whereSql.append(" and user_sex=?");
			params.add(user_sex);
		}
		
		String user_academy = criteria.getUser_academy();
		if(user_academy != null && !user_academy.trim().isEmpty()) {
			whereSql.append(" and user_academy=?");
			params.add(user_academy);
		}
		
		String user_phone = criteria.getUser_phone();
		if(user_phone != null && !user_phone.trim().isEmpty()) {
			whereSql.append(" and user_phone like ?");
			params.add("%" + user_phone + "%");
		}

		String user_qq = criteria.getUser_qq();
		if(user_qq != null && !user_qq.trim().isEmpty()) {
			whereSql.append(" and user_qq like ?");
			params.add("%" + user_qq + "%");
		}
		
		String user_email = criteria.getUser_email();
		if(user_email != null && !user_email.trim().isEmpty()) {
			whereSql.append(" and user_email like ?");
			params.add("%" + user_email + "%");
		}
		
		/*
		 * select count(*)...+where�Ӿ�
		 * ִ��֮
		 * */
			Number num;
			num = (Number)qr.query(cntSql.append(whereSql).toString(),new ScalarHandler(), params.toArray());
			int tr = num.intValue();
			pb.setTr(tr);
			/*
			 * 4.�õ�beanList
			 */
			StringBuilder sql = new StringBuilder("select * from myuser");
			StringBuilder limitSql = new StringBuilder(" limit ?,?");
			params.add((pc-1)*ps);
			params.add(ps);
			List<User> beanList = qr.query(sql.append(whereSql).append(limitSql).toString(), 
					new BeanListHandler<User>(User.class), 
					params.toArray());
			pb.setBeanList(beanList);
			
			return pb;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}




}
