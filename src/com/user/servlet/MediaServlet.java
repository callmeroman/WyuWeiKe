package com.user.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.user.bean.Media;
import com.user.dao.impl.MediaDaoImpl;



public class MediaServlet extends HttpServlet {



	public MediaServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用MediaServlet上传视频");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/////////////////////////////////////////////////////////
		//格式化时间
		Date date=new Date();
		SimpleDateFormat date1 =new SimpleDateFormat("yyyy年MM月dd日");
		String media_uploadtime=date1.format(date);
//		String media_uploadtime = (String)date.//获取当前时间并返回为字符串表示
		/////////////////////////////////////////////////////////
		//获得数据体
		ServletInputStream in=request.getInputStream();
		//测试，将获得的数据打印成字符串
//		String s = IOUtils.toString(in);
//		System.out.println("s="+s);
		/*上传三步：
		 * 1.得到工厂
		 * 2.通过工厂创建解析器
		 * 3.解析request，得到FileItem集合
		 * 4.遍历FileItem集合，调用API完成文件保存
		 * **/
		DiskFileItemFactory factory=new DiskFileItemFactory(20*1024,new File("D:/f/temp"));//得到工厂,缓存大小20*1024，临时目录F:/f/temp提前建好,文件大于20k则保存到临时目录

		ServletFileUpload sfu=new ServletFileUpload(factory);//得到解析器
		
		sfu.setFileSizeMax(500*1025*1024);//限制单个文件大小为500M，需在parseRequest(request)之前
		sfu.setSizeMax(500*1025*1024);//限制整个文件大小为500M，需在parseRequest(request)之前
		
		try {//解析request，得到FileItem集合
			List<FileItem> fileItemList= sfu.parseRequest(request);//描述或分析request，查询字符串和请求体中获取参数赋值到paramMap
			FileItem fi1=fileItemList.get(0);//file
			
			FileItem fi2=fileItemList.get(1);
			System.out.println("fi2.getContentType()="+fi2.getContentType());
			
			FileItem fi3=fileItemList.get(2);
//			FileItem fi4=fileItemList.get(3);
//			FileItem fi5=fileItemList.get(4);
//			FileItem fi6=fileItemList.get(5);
			System.out.println("文件表单项演示：");
			System.out.println("content-type:"+fi1.getContentType());
			System.out.println("size:"+fi1.getSize());
			System.out.println("filename(fi1.getName():"+fi1.getName());//getFieldName()返回当前表单项的名称--getName()返回上传的文件名
			System.out.println("name(fi1.getFieldName():)"+fi1.getFieldName());
//			System.out.println("普通表单项演示："fi2.getFieldName()+"="+fi2.getString("utf-8"));//？？？？？？？？
			/////////////////////////////////////////////////////
			//1.得到文件保存路径
			String root = this.getServletContext().getRealPath("/WEB-INF/files");
			/**
			 * 2.生成二层目录
			 * 1).得到文件名
			 * 2).得到hashcode
			 * 3).转发成16进制
			 * 4).获取前两个字符用来生成目录
			 * **/
				String filename = fi1.getName();
				/**
				 * 处理文件名的绝对路径问题
				 **/
				int index = filename.lastIndexOf("\\");
				if(index!=-1){
					filename=filename.substring(index+1);
				}
				/**
				 *给文件名称添加uuid前缀，处理文件同名问题 
				 **/
				String savename = media_uploadtime+"_"+filename;
					/**
					 * 得到hashcode
					 **/
				int hcode= filename.hashCode();
				String hex=Integer.toHexString(hcode);
				System.out.println("得到hashcode转化的16进制hex="+hex);
				/**
				 * 获取hex的前两个字符，与root链接，生成一个完整的路径
				 * **/
				File dirFile = new File(root,hex.charAt(0)+"/"+hex.charAt(1));
				/*
				 * 创建目录链
				 * */
				dirFile.mkdirs();
				/*
				 * 创建目录文件
				 * */
				File destFile=new File(dirFile,savename);
				System.out.println("得到文件目录="+destFile);
				/*
				 * 保存
				 * */
				fi1.write(destFile);//第一异常
			/////////////////////////////////////////////////////
			/*//保存文件
			File destFile=new java.io.File("c:/yiyiyi/test.avi");
			fi1.write(destFile);//选择异常Add catch clause to surrounding try？？？
			*/
			
				String media_path=dirFile.toString();//toString()返回对象的字符串表示
				
				String media_name=media_uploadtime+fi2.getString();//解决上传文件同名问题，可在name前面加个date()
				
				String media_type=fi3.getString();
				System.out.println("media_type="+fi3.getString());
				
//				String media_native=fi4.getString();
//				System.out.println("media_native="+fi4.getString());
//				
//				String media_way=fi5.getString();
//				System.out.println("media_way="+fi5.getString());
//				
//				String media_describe=fi5.getString();
//				System.out.println("media_describe="+fi5.getString());
//				
				
				Media media=new Media();//创建media对象
				media.setMedia_path(media_path);
				media.setMedia_name(media_name);
				media.setMedia_type(media_type);
//				media.setmedia_native(media_native);
//				media.setmedia_way(media_way);
//				media.setmedia_describe(media_describe);
//				media.setmedia_uploadtime(media_uploadtime);
				MediaDaoImpl mediaDaoImpl=new MediaDaoImpl();
				mediaDaoImpl.savemedia1(media);
				request.setAttribute("savemediamessage", "上传成功,请完善视频信息");
				request.setAttribute("media_name", media_name);
				request.getRequestDispatcher("/media/media_moremessage.jsp").forward(request, response);
				
				
		} catch (FileUploadException e) {
			throw new RuntimeException(e);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
		
		
		
		
		
		
		
		out.flush();
		out.close();
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void init() throws ServletException {
		
	}

}
