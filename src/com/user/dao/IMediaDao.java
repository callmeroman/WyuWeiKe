package com.user.dao;

import java.util.List;

import com.user.bean.Media;

public interface IMediaDao {
	
	public boolean savemedia1(Media media);//上传视频
	public boolean savemediamessage(Media media,String media_name);//完善视频信息
	public Media getmediaByid(int id);
	public Media upmediaByid();
	    /**
	     * 视频转码
	     * @param ffmpegPath    转码工具的存放路径
	     * @param upFilePath    用于指定要转换格式的文件,要截图的视频源文件
	     * @param codcFilePath    格式转换后的的文件保存路径
	     * @param mediaPicPath    截图保存路径
	     * @return
	     * @throws Exception
	     */
	    public boolean executeCodecs(String ffmpegPath,String upFilePath, String codcFilePath, String mediaPicPath)throws Exception;
	    
	    /**
	     * 保存文件
	     * @param media
	     * @return
	     * @throws Exception
	     */
	    public boolean savemedia(Media media)throws Exception;

	    /**
	     * 查询本地库中所有记录的数目
	     * @return
	     * @throws Exception
	     */
	    public int getAllmediaCount()throws Exception;
	    
	    /**
	     * 带分页的查询
	     * @param firstResult
	     * @param maxResult
	     * @return
	     */
	    public List<Media> queryALlmedia(int firstResult, int maxResult)throws Exception;
	    
	    /**
	     * 根据Id查询视频
	     * @param id
	     * @return
	     * @throws Exception
	     */
	    public Media querymediaById(int id)throws Exception;

}
