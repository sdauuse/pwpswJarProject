package com.pwpew.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pwpew.entity.TVolunteer;
import com.pwpew.modeldriven.VolunteerMd;
import com.pwpew.service.VolunteerService;
import com.pwpew.utils.FastJsonUtil;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    private VolunteerMd volunteerMd = new VolunteerMd();

    @Override
    public VolunteerMd getModel() {
        return volunteerMd;
    }

    //    用户注册方法
    public String volunteerRegister() throws InvocationTargetException, IllegalAccessException {
        volunteerService.insertVolunteer(volunteerMd);
        return "volRegisterSuccess";
    }

    public void list() {
        //获取页码
        int page = volunteerMd.getPage();
        //获取每页显示多少数据
        int rows = volunteerMd.getRows();

        //计算开始记录下标
        int firstResult = (page - 1) * rows;
        //获取数据库中的帖子总数
        Long total = volunteerService.findVolunteerCount(volunteerMd);
        //分页查询帖子
        List<TVolunteer> list = volunteerService.findVolunteerByPage(volunteerMd, firstResult, rows);
        //将查询的通告进行分装，用于转换成json对象
        Map<String, Object> datagrid_result = new HashMap<String, Object>();
        datagrid_result.put("rows", list);
        datagrid_result.put("total", total);

        //转换成json对象
        HttpServletResponse response = ServletActionContext.getResponse();
        String jsonString = FastJsonUtil.toJSONString(datagrid_result);
        FastJsonUtil.write_json(response, jsonString);
    }

    public void findVolById() {

        TVolunteer volunteer = volunteerService.getVolunteerById(volunteerMd.getVolId());

        HttpServletResponse response = ServletActionContext.getResponse();
        String jsonString = FastJsonUtil.toJSONString(volunteer);
        // 使用JsonFormatterAddPrefix工具方法将嵌套的json转成单层结构
        jsonString = FastJsonUtil.JsonFormatterAddPrefix(jsonString, "", null);
        FastJsonUtil.write_json(response, jsonString);
    }

    public void deleteVolunteer() {
        HttpServletResponse response = ServletActionContext.getResponse();
        try {

            TVolunteer volunteer = new TVolunteer();
            BeanUtils.copyProperties(volunteerMd, volunteer);
            volunteerService.deleteVolunteer(volunteer);
        } catch (Exception e) {
            e.printStackTrace();
            String ajaxResult = FastJsonUtil.ajaxResult(false, "删除失败");
            FastJsonUtil.write_json(response, ajaxResult);
            return;
        }

        String jsonString = FastJsonUtil.ajaxResult(true, "删除成功");
        FastJsonUtil.write_json(response, jsonString);
    }
}
