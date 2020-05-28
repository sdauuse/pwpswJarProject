package com.pwpew.dao.impl;

import com.pwpew.dao.CommentDao;
import com.pwpew.entity.TComment;
import com.pwpew.modeldriven.CommentMd;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

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

    public Long findCommentCount(CommentMd commentMd){
        //使用hql查询
        StringBuffer queryString = new StringBuffer();
        queryString.append("select count(*) from TComment t");

        //定义List存放参数
        List<Object> params = new ArrayList<Object>();

        //拼装 查询条件
//        findCommentCondition(commentMd, queryString, params);

        List list = this.getHibernateTemplate().find(queryString.toString(), params.toArray());
        Long total = (Long) list.get(0);
        return total;
    }


}
