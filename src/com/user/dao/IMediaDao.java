package com.user.dao;

import java.util.List;

import com.user.bean.Media;
import com.user.bean.PageBean;

public interface IMediaDao {
	
	public boolean savemedia1(Media media);//�ϴ���Ƶ
	public boolean savemediamessage(Media media,String media_name);//������Ƶ��Ϣ
	public List<Media> getmediaByUser_id(String user_id);//�����¼�û���������media
	public Media upmediaByid();
	/**
	 * ����ҳ�Ĳ�ѯ
	 * @param firstResult
	 * @param maxResult
	 * @return
	 */
	public PageBean<Media> findALlMedia(int pc, int ps);
	    /**
	     * ��Ƶת��
	     * @param ffmpegPath    ת�빤�ߵĴ��·��
	     * @param upFilePath    ����ָ��Ҫת����ʽ���ļ�,Ҫ��ͼ����ƵԴ�ļ�
	     * @param codcFilePath    ��ʽת����ĵ��ļ�����·��
	     * @param mediaPicPath    ��ͼ����·��
	     * @return
	     * @throws Exception
	     */
	    public boolean executeCodecs(String ffmpegPath,String upFilePath, String codcFilePath, String mediaPicPath)throws Exception;
	    
	    /**
	     * �����ļ�
	     * @param media
	     * @return
	     * @throws Exception
	     */
	    public boolean savemedia(Media media)throws Exception;

	    /**
	     * ��ѯ���ؿ������м�¼����Ŀ
	     * @return
	     * @throws Exception
	     */
	    public int getAllmediaCount()throws Exception;
	    
	    
	    /**
	     * ����user_id��ѯ��Ƶ
	     * @param id
	     * @return
	     * @throws Exception
	     */
	    public Media querymediaByUser_id(int user_id)throws Exception;

}
