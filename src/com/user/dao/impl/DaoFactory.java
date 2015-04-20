package com.user.dao.impl;

import com.user.dao.IMediaDao;

public class DaoFactory { //����ģʽ,����Dao����,����ӿڱ��,����ʵ��ҵ��ӿڶ���Ķ���
    
    private static DaoFactory daoFactory = new DaoFactory();
    
    //�������ģʽ, ˽�й���,�����ṩ��ȡ�����Ķ����Ψһ�ӿ�,
    private DaoFactory(){
        
    }
    
    public static DaoFactory getInstance(){
        return daoFactory;
    }
    
    public static IMediaDao getVideoDao(){
        return new MediaDaoImpl();
    }

}
