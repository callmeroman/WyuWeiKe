package com.user.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.user.bean.Media;
import com.user.bean.PageBean;
import com.user.bean.User;
import com.user.dao.IMediaDao;
import com.user.util.DBCPUtil;
import com.user.util.JdbcUtil;

public class MediaDaoImpl implements IMediaDao {
	private QueryRunner qr=new QueryRunner(DBCPUtil.getDataSource());
	public boolean savemedia1(Media media) {
		// (1)获取连接
		Connection conn = JdbcUtil.getConn();
		// (2)声明相关对象
		PreparedStatement ps = null;
		// (3)编写SQL
		String sql = "insert into media(media_name,media_type,media_native," +
				"media_way,media_describe,media_path,media_uploadtime,media_picturepath) values"
				+ "(?,?,?,?,?,?,?,?)";
		int result = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, media.getMedia_name());
			ps.setString(2, media.getMedia_type());
			ps.setString(3, media.getMedia_native());
			ps.setString(4, media.getMedia_way());
			ps.setString(5, media.getMedia_describe());
			ps.setString(6, media.getMedia_path());
//			ps.setInt(8, media.getmedia_sharefrequency());
//			ps.setInt(9, media.getmedia_polls());
			ps.setString(7, media.getMedia_uploadtime());
			ps.setString(8, media.getMedia_picturepath());
//			ps.setString(11, media.getmedia_picture());
			result = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(null,ps, conn);
		}
		if (result == 1) {
			return true;
		}

return false;
}

	public List<Media> getmediaByUser_id(String user_id) {
		
		String sql = "select * from media where user_id='"+user_id+"';";
		try {
			return qr.query(sql, new BeanListHandler<Media>(Media.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

		
		
		
		
	}

	public Media upmediaByid() {
		
		return null;
	}

	public boolean executeCodecs(String ffmpegPath, String upFilePath,
			String codcFilePath, String mediaPicPath) throws Exception {
		 // 创建一个List集合来保存转换视频文件为flv格式的命令
        List<String> convert = new ArrayList<String>();
        convert.add(ffmpegPath); // 添加转换工具路径
        convert.add("-i"); // 添加参数＂-i＂，该参数指定要转换的文件
        convert.add(upFilePath); // 添加要转换格式的视频文件的路径
        convert.add("-qscale");     //指定转换的质量
        convert.add("6");
        convert.add("-ab");        //设置音频码率
        convert.add("64");
        convert.add("-ac");        //设置声道数
        convert.add("2");
        convert.add("-ar");        //设置声音的采样频率
        convert.add("22050");
        convert.add("-r");        //设置帧频
        convert.add("24");
        convert.add("-y"); // 添加参数＂-y＂，该参数指定将覆盖已存在的文件
        convert.add(codcFilePath);

        // 创建一个List集合来保存从视频中截取图片的命令
        List<String> cutpic = new ArrayList<String>();
        cutpic.add(ffmpegPath);
        cutpic.add("-i");
        cutpic.add(upFilePath); // 同上（指定的文件即可以是转换为flv格式之前的文件，也可以是转换的flv文件）
        cutpic.add("-y");
        cutpic.add("-f");
        cutpic.add("image2");
        cutpic.add("-ss"); // 添加参数＂-ss＂，该参数指定截取的起始时间
        cutpic.add("17"); // 添加起始时间为第17秒
        cutpic.add("-t"); // 添加参数＂-t＂，该参数指定持续时间
        cutpic.add("0.001"); // 添加持续时间为1毫秒
        cutpic.add("-s"); // 添加参数＂-s＂，该参数指定截取的图片大小
        cutpic.add("800*280"); // 添加截取的图片大小为350*240
        cutpic.add(mediaPicPath); // 添加截取的图片的保存路径

        boolean mark = true;
        ProcessBuilder builder = new ProcessBuilder();
        try {
            builder.command(convert);
            builder.redirectErrorStream(true);
            builder.start();
            
            builder.command(cutpic);
            builder.redirectErrorStream(true);
            // 如果此属性为 true，则任何由通过此对象的 start() 方法启动的后续子进程生成的错误输出都将与标准输出合并，
            //因此两者均可使用 Process.getInputStream() 方法读取。这使得关联错误消息和相应的输出变得更容易
            builder.start();
        } catch (Exception e) {
            mark = false;
            System.out.println(e);
            e.printStackTrace();
        }
        return mark;
	}

	public boolean savemedia(Media media) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	public int getAllmediaCount() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Media> queryALlmedia(int firstResult, int maxResult)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Media querymediaByUser_id(int user_id) throws Exception {
//		//获取链接
//		Connection connection=JdbcUtil.getConn();
//		//声明相关对象
//		PreparedStatement ps=null;
//		//编写sql语句
////		String sql="select * from myuser inner join media on myuser.user_id=media.user_id";//跨表查询
//		String sql="select * from media where user_id='"+user_id+"';";
//		int result = 0;
//		try {
//			ps=connection.prepareStatement(sql);
//			ps.ge
//			
//			
//		} catch (Exception e) {
//			
//		}
		return null;
	}

	public boolean savemediamessage(Media media,String media_name) {
		// (1)获取连接
		Connection conn = JdbcUtil.getConn();
		// (2)声明相关对象。PreparedStatement 实例包含已编译的 SQL 语句。这就是使语句“准备好”。
		PreparedStatement ps = null;
		// (3)编写SQL
		String sql = "update media set media_name=?,media_native=?,media_way=?,media_describe=?,media_uploadtime=?,user_id=? where media_name='"+media_name+"' ;";
		int result = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, media.getMedia_name());
			ps.setString(2, media.getMedia_native());
			ps.setString(3, media.getMedia_way());
			ps.setString(4, media.getMedia_describe());
			ps.setString(5, media.getMedia_uploadtime());
			ps.setString(6, media.getUser_id());
			result = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(null,ps, conn);
		}
		if (result == 1) {
			return true;
		}

return false;
	}

	public PageBean<Media> findALlMedia(int pc, int ps){
		try {
//			String sql="select * from media";
//			return qr.query(sql, new BeanListHandler<media>(media.class));
			/*pb=pagebean;  pc=当前页;  ps=每页记录数；   tr=总记录数；  tp=总页数
			 * 1.创建PageBean对象pb
			 * 2.设置pb的pc和ps
			 * 3.得到tr，设置给pb
			 * 4.得到beanlist，设置给pb
			 * 5.返回pb
			 */
			PageBean<Media>pb=new PageBean<Media>();//1
			pb.setPc(pc);//2
			pb.setPs(ps);
			/*
			 * 3.得到tr
			 */
			String sql="select count(*) from media";
			//ScalarHandler：将结果集中某一条记录(行)的其中某一列的数据存成 Object
			Number number=(Number)qr.query(sql, new ScalarHandler());
			//intValue()是java.lang.Number类的方法,将integer对象转换成int，输出int数据。
			int tr=number.intValue();
			pb.setTr(tr);
			/*
			 * 4.得到beanList
			 */
			sql="select * from media order by id limit ?,?";
			List<Media>beanList=qr.query(sql, new BeanListHandler<Media>(Media.class),(pc-1)*ps,ps);
			pb.setBeanList(beanList);
			return pb;//5
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}



}
