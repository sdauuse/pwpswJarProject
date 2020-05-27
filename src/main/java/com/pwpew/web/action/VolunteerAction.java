package com.pwpew.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pwpew.modeldriven.VolunteerMd;
import com.pwpew.service.VolunteerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import java.lang.reflect.InvocationTargetException;

/**
 * @author Yani
 * @date 2020/5/24 - 18:37
 * @commet: 志愿者使用的action
 */
@Controller("volunteerAction")
@Scope("prototype")
public class VolunteerAction extends ActionSupport implements ModelDriven<VolunteerMd> {
    @Autowired
    private VolunteerService volunteerService;

    //模型驱动对象
    private VolunteerMd volunteer = new VolunteerMd();
    @Override
    public VolunteerMd getModel() {
        return volunteer;
    }

    //    用户注册方法
    public String volunteerRegister() throws InvocationTargetException, IllegalAccessException {
        volunteerService.insertVolunteer(volunteer);
        return "volRegisterSuccess";
    }


}
