package com.pwpew.dao.impl;

import com.pwpew.dao.CommentDao;
import com.pwpew.entity.TComment;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:03
 * @commet:
 */
@Repository("commentDao")
public class CommentDaoImpl extends HibernateDaoSupport implements CommentDao {

    private Session session = null;

    @Autowired
    public void setHT(HibernateTemplate hibernateTemplate) {
        // 将commentDao 中注入进来 的hibernateTemplate给父类的setHibernateTemplate方法传入
        this.setHibernateTemplate(hibernateTemplate);
    }

    public void insertComment(TComment comment){
        session = this.getSessionFactory().getCurrentSession();
        session.save(comment);
    }


}
