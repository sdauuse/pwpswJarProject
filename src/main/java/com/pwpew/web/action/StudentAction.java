package com.pwpew.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.pwpew.entity.TUserEntity;
import com.pwpew.service.impl.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 * @author miaoyin
 * @date 2020/5/3 - 18:42
 * @commet:
 */
@Controller("studentAction")
@Scope("prototype")
public class StudentAction extends ActionSupport {

    @Autowired
    private StudentService studentService;

    private TUserEntity userEntity;

    public TUserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(TUserEntity userEntity) {
        this.userEntity = userEntity;
    }

    public String checkLogin(){

        System.out.println("11111111111111111111111111111111"+userEntity.getUsername());
        System.out.println("2222222222222222222222222222222222"+userEntity.getPassword());
        TUserEntity user = studentService.getUser();

        if(userEntity.getUsername().equals(user.getUsername()) && userEntity.getPassword().equals(user.getPassword())){
            return "success";
        }
        return "error";

    }
}
