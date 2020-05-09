package com.pwpew.dao.impl;

import com.pwpew.dao.UserDao;
import com.pwpew.entity.TUser;
import com.pwpew.modeldriven.UserMd;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.concurrent.locks.Condition;

/**
 * @author miaoyin
 * @date 2020/5/8 - 9:46
 * @commet:
 */
@Repository("userDao")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {


    //注入父类的模板对象
    @Autowired
    public void setHT(HibernateTemplate hibernateTemplate) {
        // 将CustomerDao 中注入进来 的hibernateTemplate给父类的setHibernateTemplate方法传入
        this.setHibernateTemplate(hibernateTemplate);
    }

    //QBC查询初始化
    public DetachedCriteria createDetachedCriteria() {
        return DetachedCriteria.forClass(TUser.class);
    }

    @Override
    public List<TUser> findUser() {

        DetachedCriteria detachedCriteria = this.createDetachedCriteria();
        return (List<TUser>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
    }

    @Override
    public TUser getUser(TUser user) {

        return this.getHibernateTemplate().get(TUser.class,user.getUserId());
    }

    @Override
    public void updateUser(TUser user) {

        this.getHibernateTemplate().update(user);
    }

    @Override
    public void deleteUser(TUser user) {

        this.getHibernateTemplate().delete(user);
    }

    @Override
    public void insertUser(TUser user) {

        this.getHibernateTemplate().save(user);
    }

    //分页查询
    @Override
    public List<TUser> findUserByPage(UserMd user, int firstResult, int maxResults) {


        return null;
    }

    //查询用户总数，可用于分页
    @Override
    public int findUserCount(UserMd user) {

        //1.查询总共的数目 n=100
        //
        //第二页 10，10
        //(page-1)*maxResult  n         (2-1)*10=10  ,10
        //2、用我们思考的算法来分压  (2-1)

        return 0;
    }



}
