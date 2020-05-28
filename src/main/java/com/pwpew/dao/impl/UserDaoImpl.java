package com.pwpew.dao.impl;

import com.pwpew.dao.UserDao;
import com.pwpew.entity.TPost;
import com.pwpew.entity.TUser;
import com.pwpew.modeldriven.UserMd;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

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
        // 将userDao 中注入进来 的hibernateTemplate给父类的setHibernateTemplate方法传入
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
    public Long findUserCount(UserMd user) {

        return 0l;
    }

    //通过帖子编号查找对应的用户
    public TUser findUserByPostId(int postId){
        Session session = this.getSessionFactory().getCurrentSession();
        Query query = session.createQuery("from TPost where postId = ?").setParameter(0, postId);
        List<TPost> list = query.list();
        TPost post = list.get(0);
        TUser user = post.getUser();
        return user;
    }

    //在账号管理处进行个人信息更新
    public int updateUserOfAccount(TUser user){
        Session session = this.getSessionFactory().getCurrentSession();
        Query query = session.createQuery("update TUser set username = ?,userNickname = ?,userGender = ?,userAge = ?,userPhone = ?,userProvince = ?,userCity = ?,userPicture = ?,email = ? where userId ="+user.getUserId());
        query.setParameter(0,user.getUsername());
        query.setParameter(1,user.getUserNickname());
        query.setParameter(2,user.getUserGender());
        query.setParameter(3,user.getUserAge());
        query.setParameter(4,user.getUserPhone());
        query.setParameter(5,user.getUserProvince());
        query.setParameter(6,user.getUserCity());
        query.setParameter(7,user.getUserPicture());
        query.setParameter(8,user.getEmail());
        int i = query.executeUpdate();
        return i;
    }

}
