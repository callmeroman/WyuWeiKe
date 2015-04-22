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



public class MediaUploadServlet extends HttpServlet {



	public MediaUploadServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����MediaServlet�ϴ���Ƶ");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/////////////////////////////////////////////////////////
		//��ʽ��ʱ��
		Date date=new Date();
		SimpleDateFormat date1 =new SimpleDateFormat("yyyy��MM��dd��HHʱmm��");
		String media_uploadtime=date1.format(date);
//		String media_uploadtime = (String)date.//��ȡ��ǰʱ�䲢����Ϊ�ַ�����ʾ
		/////////////////////////////////////////////////////////
		//���������
		ServletInputStream in=request.getInputStream();
		//���ԣ�����õ����ݴ�ӡ���ַ���
//		String s = IOUtils.toString(in);
//		System.out.println("s="+s);
		/*�ϴ�������
		 * 1.�õ�����
		 * 2.ͨ����������������
		 * 3.����request���õ�FileItem����
		 * 4.����FileItem���ϣ�����API����ļ�����
		 * **/
		DiskFileItemFactory factory=new DiskFileItemFactory(20*1024,new File("D:/f/temp"));//�õ�����,�����С20*1024����ʱĿ¼F:/f/temp��ǰ����,�ļ�����20k�򱣴浽��ʱĿ¼
		ServletFileUpload sfu=new ServletFileUpload(factory);//�õ�������
		sfu.setFileSizeMax(500*1025*1024);//���Ƶ����ļ���СΪ500M������parseRequest(request)֮ǰ
		sfu.setSizeMax(500*1025*1024);//���������ļ���СΪ500M������parseRequest(request)֮ǰ
		try {//����request���õ�FileItem����
			List<FileItem> fileItemList= sfu.parseRequest(request);//���������request����ѯ�ַ������������л�ȡ������ֵ��paramMap
			FileItem fi1=fileItemList.get(0);//file����Ƶmedia_path 
			
			FileItem fi2=fileItemList.get(1);//file��ͼƬmedia_picturepath 
			System.out.println("fi2.getContentType()="+fi2.getContentType());
			
			FileItem fi3=fileItemList.get(2);//��Ƶ���⣺media_name
			FileItem fi4=fileItemList.get(3);//�����γ̣�media_type
//			FileItem fi5=fileItemList.get(4);//
//			FileItem fi6=fileItemList.get(5);
			System.out.println("�ļ�������ʾ��");
			System.out.println("content-type:"+fi1.getContentType());
			System.out.println("size:"+fi1.getSize());
			System.out.println("filename(fi1.getName():"+fi1.getName());//getFieldName()���ص�ǰ���������--getName()�����ϴ����ļ���
			System.out.println("name(fi1.getFieldName():)"+fi1.getFieldName());
			//////////////////////////////////////��Ƶ//////////////////////////////////////////////////////////////
			//1.�õ��ļ�����·��
			String root = this.getServletContext().getRealPath("/WEB-INF/files");
			/**
			 * 2.���ɶ���Ŀ¼
			 * 1).�õ��ļ���
			 * 2).�õ�hashcode
			 * 3).ת����16����
			 * 4).��ȡǰ�����ַ���������Ŀ¼
			 * **/
				String filename = fi1.getName();
				/**
				 * �����ļ����ľ���·������
				 **/
				int index = filename.lastIndexOf("\\");
				if(index!=-1){
					filename=filename.substring(index+1);
				}
				/**
				 *���ļ��������uuidǰ׺�������ļ�ͬ������ 
				 **/
				String savename = media_uploadtime+"_"+filename;
					/**
					 * �õ�hashcode
					 **/
				int hcode= filename.hashCode();
				String hex=Integer.toHexString(hcode);
				System.out.println("�õ�hashcodeת����16����hex="+hex);
				/**
				 * ��ȡhex��ǰ�����ַ�����root���ӣ�����һ��������·��
				 * **/
				File dirFile = new File(root,hex.charAt(0)+"/"+hex.charAt(1));
				/*
				 * ����Ŀ¼��
				 * */
				dirFile.mkdirs();
				/*
				 * ����Ŀ¼�ļ�
				 * */
				File destFile=new File(dirFile,savename);
				System.out.println("�õ��ļ�Ŀ¼="+destFile);
				/*
				 * ����
				 * */
				fi1.write(destFile);//��һ�쳣
			//////////////////////////////////////////////////////////////////////////////////////////////////
				//////////////////////////////////////ͼƬ//////////////////////////////////////////////////////////////
				//1.�õ��ļ�����·��
				/**
				 * 2.���ɶ���Ŀ¼
				 * 1).�õ��ļ���
				 * 2).�õ�hashcode
				 * 3).ת����16����
				 * 4).��ȡǰ�����ַ���������Ŀ¼
				 * **/
					String filename2 = fi2.getName();
					System.out.println("ͼƬ��filename2="+filename2);
					/**
					 * �����ļ����ľ���·������
					 **/
					int index2 = filename2.lastIndexOf("\\");
					if(index2!=-1){
						filename2=filename2.substring(index2+1);
					}
					/**
					 *���ļ��������uuidǰ׺�������ļ�ͬ������ 
					 **/
					String savename2 = media_uploadtime+"_"+filename2;
					System.out.println("ͼƬ��savename2="+savename2);
						/**
						 * �õ�hashcode
						 **/
					int hcode2= filename2.hashCode();
					String hex2=Integer.toHexString(hcode2);
					System.out.println("�õ�hashcodeת����16����hex="+hex2);
					/**
					 * ��ȡhex��ǰ�����ַ�����root���ӣ�����һ��������·��
					 * **/
					File dirFile2 = new File(root,hex2.charAt(0)+"/"+hex2.charAt(1));
					System.out.println("ͼƬ����Ŀ¼dirFile2="+dirFile2);
					/*
					 * ����Ŀ¼��
					 * */
					dirFile2.mkdirs();
					/*
					 * ����Ŀ¼�ļ�
					 * */
					File destFile2=new File(dirFile2,savename2);
					System.out.println("�õ�ͼƬpath destFile2="+destFile2);
					/*
					 * ����
					 * */
					fi2.write(destFile2);//��һ�쳣
				//////////////////////////////////////////////////////////////////////////////////////////////////
			/*//�����ļ�
			File destFile=new java.io.File("c:/yiyiyi/test.avi");
			fi1.write(destFile);//ѡ���쳣Add catch clause to surrounding try������
			*/
			
				String media_path="files/"+hex.charAt(0)+"/"+hex.charAt(1)+savename;//toString()���ض�����ַ�����ʾ
				
				String media_picturepath="files/"+hex2.charAt(0)+"/"+hex2.charAt(1)+savename2;
				
				String media_name=media_uploadtime+fi3.getString();//����ϴ��ļ�ͬ�����⣬����nameǰ��Ӹ�date()
				
				String media_type=fi4.getString();
				System.out.println("media_type="+fi4.getString());
				
				Media media=new Media();//����media����
				media.setMedia_path(media_path);
				media.setMedia_picturepath(media_picturepath);
				media.setMedia_name(media_name);
				media.setMedia_type(media_type);
				MediaDaoImpl mediaDaoImpl=new MediaDaoImpl();
				mediaDaoImpl.savemedia1(media);
				request.setAttribute("savemediamessage", "�ϴ��ɹ�,��������Ƶ��Ϣ");
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
