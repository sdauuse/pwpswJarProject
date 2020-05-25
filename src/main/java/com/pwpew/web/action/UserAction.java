package com.pwpew.web.action;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pwpew.entity.TUser;
import com.pwpew.modeldriven.PostMd;
import com.pwpew.modeldriven.UserMd;
import com.pwpew.service.UserService;
import com.pwpew.utils.FastJsonUtil;
import com.pwpew.utils.VerifyCode;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import org.apache.commons.io.FileUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

/**
 * @author miaoyin
 * @date 2020/5/7 - 18:37
 * @commet: 用户使用的action
 */
@Controller("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven<UserMd> {

    @Autowired
    private UserService userService;

    //模型驱动对象
    private UserMd userMd = new UserMd();

    @Override
    public UserMd getModel() {
        return userMd;
    }

    public String list() {

        TUser user = userService.getUserById(1);

        ServletActionContext.getRequest().setAttribute("username", user.getUsername());

        return "ok";
    }

    public void verifyUser() throws IOException {


        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        ArrayList<TUser> list = (ArrayList<TUser>) userService.findUser();
        boolean flag = false;
        //从session重获取验证码
        String vcode = (String) request.getSession().getAttribute("vcode");

        //判断验证码是否正确
        if (vcode.equalsIgnoreCase(userMd.getVerifyCode()) == false) {
            // 向客户返回提示
            String ajaxResult = FastJsonUtil.ajaxResult(false, "验证码错误！");
            // 输出json
            FastJsonUtil.write_json(response, ajaxResult);
            //终止执行
            return;
        }


        //验证码正确后，核对用户名和密码
        for (TUser tUser : list) {
            if (tUser.getUsername().equals(userMd.getUsername()) && tUser.getUserPassword().equals(userMd.getUserPassword())) {
                // 向客户返回成功提示
                String ajaxResult = FastJsonUtil.ajaxResult(true, "登录成功！");
                // 输出json
                FastJsonUtil.write_json(response, ajaxResult);
                //终止执行
                return;
            }

            //用于验证用户的用户名是否存在
            if (tUser.getUsername().equals(userMd.getUsername())) {
                flag = true;
            }
        }

        //如果用户名不存在，直接向前端进行提示
        if (flag == false) {
            // 向客户返回成功提示
            String ajaxResult = FastJsonUtil.ajaxResult(false, "用户名不存在,请先注册");
            // 输出json
            FastJsonUtil.write_json(response, ajaxResult);
            //终止执行
            return;
        }

        // 向客户返回成功提示
        String ajaxResult = FastJsonUtil.ajaxResult(false, "用户名或者密码错误！");
        // 输出json
        FastJsonUtil.write_json(response, ajaxResult);

    }


    /**
     * 实现验证码的获取
     *
     * @throws IOException
     */
    public void vcode() throws IOException {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();

        //创建验证码
        VerifyCode vc = new VerifyCode();
        //将验证码图片放入image中
        BufferedImage image = vc.getImage();
        //将验证码内容放入session中
        request.getSession().setAttribute("vcode", vc.getText());
        //静态方法，将验证码图片输出到前端
        VerifyCode.output(image, response.getOutputStream());
    }


    public void submitpicture() {
        try {
            // 判断是否上传成功
            // 上传成功的图片，文件默认在tomcat的临时目录 中
            File picture = userMd.getPicture();
            // 上传文件的原始名称
            String pictureFileName = userMd.getPictureFileName();
            // 上传文件的类型
            String pictureContentType = userMd.getPictureContentType();

            if (picture != null && pictureFileName != null && !pictureFileName.equals("")) {
                // 服务器图片存储路径
                String filePath = "F:\\develop\\upload\\";
                // 扩展名，从原始名称中截取
                String fileName_extension = pictureFileName.substring(pictureFileName.lastIndexOf("."));

                // 为了保证服务器上图片目录中图片名称不重复将每个上传的图片重定义一个名称
                // 新文件名称
                String fileNameNew = UUID.randomUUID().toString() + fileName_extension;
                // 定义一个File
                File fileNew = new File(filePath + fileNameNew);

                // 将tomcat下临时目录中的文件picture拷贝或移动到fileNew
                // 使用拷贝，拷贝完成tomcat下临时目录中的文件自动删除了
                FileUtils.copyFile(picture, fileNew);

                // 在数据库中保存图片路径
                userMd.setUserPicture(fileNameNew);
            }

            userService.insertUser(userMd);
        } catch (Exception e) {
            e.printStackTrace();

            return;
        }
    }
}
