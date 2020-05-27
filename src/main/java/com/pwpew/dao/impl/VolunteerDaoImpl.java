package com.pwpew.dao.impl;


import com.pwpew.dao.VolunteerDao;
import com.pwpew.entity.TUser;
import com.pwpew.entity.TVolunteer;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Yani
 * @date 2020/5/24 - 9:46
 * @commet:
 */
@Repository("volunteerDao")
public class VolunteerDaoImpl extends HibernateDaoSupport implements VolunteerDao {

    //注入父类的模板对象
    @Autowired
    public void setHT(HibernateTemplate hibernateTemplate) {
        // 将userDao 中注入进来 的hibernateTemplate给父类的setHibernateTemplate方法传入
        this.setHibernateTemplate(hibernateTemplate);
    }
    //QBC查询初始化
    public DetachedCriteria createDetachedCriteria() {
        return DetachedCriteria.forClass(TVolunteer.class);
    }

    @Override
    public List<TVolunteer> findVolunteer() {
        DetachedCriteria detachedCriteria = this.createDetachedCriteria();
        return (List<TVolunteer>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
    }

    @Override
    public TUser getVolunteer(TVolunteer volunteer) {
        return this.getHibernateTemplate().get(TUser.class,volunteer.getVolId());
    }

    @Override
    public void updateVolunteer(TVolunteer volunteer) {
        this.getHibernateTemplate().update(volunteer);
    }

    @Override
    public void deleteVolunteer(TVolunteer volunteer) {
        this.getHibernateTemplate().delete(volunteer);
    }

    @Override
    public void insertVolunteer(TVolunteer volunteer) {
        this.getHibernateTemplate().save(volunteer);
    }

    @Override
    public List<TVolunteer> findUserByPage(TVolunteer volunteer, int firstResult, int maxResults) {
        return null;
    }

    @Override
    public Long findUserCount(TVolunteer volunteer) {
        return 0l;
    }
}
