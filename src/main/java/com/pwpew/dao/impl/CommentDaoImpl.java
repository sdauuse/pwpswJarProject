package com.pwpew.dao.impl;

import com.pwpew.dao.CommentDao;
import com.pwpew.entity.TComment;
import com.pwpew.entity.TPost;
import com.pwpew.modeldriven.CommentMd;
import com.pwpew.modeldriven.PostMd;
import org.hibernate.Query;
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

    public List<TComment> findCommentByPage(CommentMd commentMd, int firstResult, int maxResults) {

        //如果在这个方法中得到Hibernate的session，通过session执行hql的查询（不使用HibernateTemplate）
        Session session = this.getSessionFactory().getCurrentSession();

        //使用hql查询
        StringBuffer queryString = new StringBuffer();

        queryString.append("from TComment t where 1=1 ");

        //定义List存放参数
        List<Object> params = new ArrayList<Object>();

        //拼装 查询条件
//        findPostCondition(postMd, queryString, params);

        Query query = session.createQuery(queryString.toString());

        //参数绑定
        //遍历params，进行每个参数绑定
        for (int i = 0; i < params.size(); i++) {
            query.setParameter(i, params.get(i));
        }
        //设置分页参数
        query.setFirstResult(firstResult);
        query.setMaxResults(maxResults);
        //直接使用原始的query对象查询

        return query.list();

    }


}
