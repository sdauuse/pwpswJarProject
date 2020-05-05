package com.pwpew.service.impl;

import com.pwpew.dao.impl.StudentDao;
import com.pwpew.entity.TUserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author miaoyin
 * @date 2020/5/3 - 18:37
 * @commet:
 */
@Service("studentService")
public class StudentService {

    @Autowired
    private StudentDao studentDao;

    public TUserEntity getUser(){

        return studentDao.getUser();
    }
}
