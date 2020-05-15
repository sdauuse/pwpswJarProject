package com.pwpew.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pwpew.entity.TAdministrator;
import com.pwpew.modeldriven.AdminMd;
import com.pwpew.service.AdminService;
import com.pwpew.utils.FastJsonUtil;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author miaoyin
 * @date 2020/5/13 - 12:57
 * @commet:管理员使用的action
 */
@Controller("adminAction")
@Scope("prototype")
public class AdminAction extends ActionSupport implements ModelDriven<TAdministrator> {

    @Autowired
    private AdminService adminService;

    private AdminMd adminMd = new AdminMd();

    @Override
    public TAdministrator getModel() {
        return adminMd;
    }


    public void findAdminList(){

        List<TAdministrator> list = adminService.findAdmin();

        //转换成json
        String jsonString = FastJsonUtil.toJSONString(list);
        HttpServletResponse response = ServletActionContext.getResponse();
        FastJsonUtil.write_json(response, jsonString);
    }
}
