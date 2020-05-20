package com.pwpew.dao.impl;

import com.pwpew.dao.PostDao;
import com.pwpew.entity.TPost;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.ArrayList;
import java.util.List;

public class PostDaoImpl extends HibernateDaoSupport implements PostDao {
    private Session session = null;
    private Transaction tx = null;

    // 获取帖子列表
    public List<TPost> getPostList(){
        List<TPost> list = new ArrayList<>();
        try{
            session = this.getSessionFactory().getCurrentSession();
            list = session.createQuery("from TPost").list();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            session.close();
        }
        return list;
    }

    // 获取帖子
    public TPost findPost(int postId){
        TPost post = new TPost();
        try{
            session = this.getSessionFactory().getCurrentSession();
            post = (TPost) session.get(TPost.class, postId);
        }catch (Exception e){
            e.printStackTrace();
        }finally{
            session.close();
        }
        return post;
    }

    // 发帖
    public void addPost(TPost post){
        try{
            session = this.getSessionFactory().getCurrentSession();
            session.save(post);
            tx = session.beginTransaction();
            tx.commit();
        }catch (Exception e){
            e.printStackTrace();
            tx.rollback();
        }finally {
            session.close();
        }
    }

    // 回帖
    public void replyPost(int postId){
        try{
            session = this.getSessionFactory().getCurrentSession();
            // todo

        }catch (Exception e){
            e.printStackTrace();
            tx.rollback();
        }finally {
            session.close();
        }
    }
}
