package com.pwpew.modeldriven;

import com.pwpew.entity.TUser;

/**
 * @author miaoyin
 * @date 2020/5/8 - 9:43
 * @commet:
 */

//继承了Tuser，相当于Tuser的加强版,便于扩展
public class UserMd extends TUser {

    //验证码
    private String verifyCode;

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }
}
