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
		// (1)��ȡ����
		Connection conn = JdbcUtil.getConn();
		// (2)������ض���
		PreparedStatement ps = null;
		// (3)��дSQL
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
		// (1)��ȡ����
		Connection conn = JdbcUtil.getConn();
		// (2)������ض���
		PreparedStatement ps = null;
		ResultSet rs = null;
		// (3)��дSQL
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
		 // ����һ��List����������ת����Ƶ�ļ�Ϊflv��ʽ������
        List<String> convert = new ArrayList<String>();
        convert.add(ffmpegPath); // ���ת������·��
        convert.add("-i"); // ��Ӳ�����-i�����ò���ָ��Ҫת�����ļ�
        convert.add(upFilePath); // ���Ҫת����ʽ����Ƶ�ļ���·��
        convert.add("-qscale");     //ָ��ת��������
        convert.add("6");
        convert.add("-ab");        //������Ƶ����
        convert.add("64");
        convert.add("-ac");        //����������
        convert.add("2");
        convert.add("-ar");        //���������Ĳ���Ƶ��
        convert.add("22050");
        convert.add("-r");        //����֡Ƶ
        convert.add("24");
        convert.add("-y"); // ��Ӳ�����-y�����ò���ָ���������Ѵ��ڵ��ļ�
        convert.add(codcFilePath);

        // ����һ��List�������������Ƶ�н�ȡͼƬ������
        List<String> cutpic = new ArrayList<String>();
        cutpic.add(ffmpegPath);
        cutpic.add("-i");
        cutpic.add(upFilePath); // ͬ�ϣ�ָ�����ļ���������ת��Ϊflv��ʽ֮ǰ���ļ���Ҳ������ת����flv�ļ���
        cutpic.add("-y");
        cutpic.add("-f");
        cutpic.add("image2");
        cutpic.add("-ss"); // ��Ӳ�����-ss�����ò���ָ����ȡ����ʼʱ��
        cutpic.add("17"); // �����ʼʱ��Ϊ��17��
        cutpic.add("-t"); // ��Ӳ�����-t�����ò���ָ������ʱ��
        cutpic.add("0.001"); // ��ӳ���ʱ��Ϊ1����
        cutpic.add("-s"); // ��Ӳ�����-s�����ò���ָ����ȡ��ͼƬ��С
        cutpic.add("800*280"); // ��ӽ�ȡ��ͼƬ��СΪ350*240
        cutpic.add(mediaPicPath); // ��ӽ�ȡ��ͼƬ�ı���·��

        boolean mark = true;
        ProcessBuilder builder = new ProcessBuilder();
        try {
            builder.command(convert);
            builder.redirectErrorStream(true);
            builder.start();
            
            builder.command(cutpic);
            builder.redirectErrorStream(true);
            // ���������Ϊ true�����κ���ͨ���˶���� start() ���������ĺ����ӽ������ɵĴ�������������׼����ϲ���
            //������߾���ʹ�� Process.getInputStream() ������ȡ����ʹ�ù���������Ϣ����Ӧ�������ø�����
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
		// (1)��ȡ����
		Connection conn = JdbcUtil.getConn();
		// (2)������ض���
		PreparedStatement ps = null;
		// (3)��дSQL
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
