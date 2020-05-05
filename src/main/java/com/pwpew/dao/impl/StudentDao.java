package com.pwpew.dao.impl;

import com.pwpew.entity.TUserEntity;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author miaoyin
 * @date 2020/5/3 - 18:37
 * @commet:
 */
@Repository("studentDao")
public class StudentDao extends HibernateDaoSupport {

    @Autowired
    public void setHT(HibernateTemplate hibernateTemplate) {
        this.setHibernateTemplate(hibernateTemplate);
    }


    public TUserEntity getUser() {
        TUserEntity userEntity = this.getHibernateTemplate().get(TUserEntity.class,1);
        return userEntity;
    }



}
