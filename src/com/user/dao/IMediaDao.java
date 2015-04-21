package com.user.dao;

import java.util.List;

import com.user.bean.Media;

public interface IMediaDao {
	
	public boolean savemedia1(Media media);//�ϴ���Ƶ
	public boolean savemediamessage(Media media,String media_name);//������Ƶ��Ϣ
	public Media getmediaByid(int id);
	public Media upmediaByid();
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
	     * ����ҳ�Ĳ�ѯ
	     * @param firstResult
	     * @param maxResult
	     * @return
	     */
	    public List<Media> queryALlmedia(int firstResult, int maxResult)throws Exception;
	    
	    /**
	     * ����Id��ѯ��Ƶ
	     * @param id
	     * @return
	     * @throws Exception
	     */
	    public Media querymediaById(int id)throws Exception;

}
