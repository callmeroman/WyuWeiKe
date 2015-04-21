package com.user.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.user.bean.Media;
import com.user.dao.IMediaDao;
import com.user.util.JdbcUtil;

public class MediaDaoImpl implements IMediaDao {

	public boolean savemedia1(Media media) {
		// (1)获取连接
		Connection conn = JdbcUtil.getConn();
		// (2)声明相关对象
		PreparedStatement ps = null;
		// (3)编写SQL
		String sql = "insert into media(media_name,media_type,media_native," +
				"media_way,media_describe,media_path,media_uploadtime) values"
				+ "(?,?,?,?,?,?,?)";
		int result = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, media.getMedia_name());
			ps.setString(2, media.getMedia_type());
			ps.setString(3, media.getMedia_native());
			ps.setString(4, media.getMedia_way());
			ps.setString(5, media.getMedia_describe());
			ps.setString(6, media.getMedia_path());
//			ps.setInt(7, media.getmedia_playfrequency());
//			ps.setInt(8, media.getmedia_sharefrequency());
//			ps.setInt(9, media.getmedia_polls());
			ps.setString(7, media.getMedia_uploadtime());
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

	public Media getmediaByid(int id) {
		// (1)获取连接
		Connection conn = JdbcUtil.getConn();
		// (2)声明相关对象
		PreparedStatement ps = null;
		ResultSet rs = null;
		// (3)编写SQL
		String sql = "select * from myuser where id=?";
		int result = 0;
		Media media = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1,id);

			rs = ps.executeQuery();
			
			while(rs.next()){
				media =new Media();
				media.setMedia_name(rs.getString(1));
				media.setMedia_type(rs.getString(2));
				media.setMedia_native(rs.getString(3));
				media.setMedia_way(rs.getString(4));
				media.setMedia_describe(rs.getString(5));
				media.setMedia_path(rs.getString(6));
				media.setMedia_playfrequency(rs.getInt(7));
				media.setMedia_sharefrequency(rs.getInt(8));
				media.setMedia_polls(rs.getInt(9));
				media.setMedia_uploadtime(rs.getString(10));
				media.setMedia_picture(rs.getString(11));
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs,ps, conn);
		}
		return media;
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

	public Media querymediaById(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean savemediamessage(Media media,String media_name) {
		// (1)获取连接
		Connection conn = JdbcUtil.getConn();
		// (2)声明相关对象
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



}
