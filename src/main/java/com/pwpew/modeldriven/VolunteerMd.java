package com.pwpew.modeldriven;

import com.pwpew.entity.TVolunteer;

/**
 * @author Yani
 * @date 2020/5/24 - 9:43
 * @commet:
 */
public class VolunteerMd extends TVolunteer {

    //验证码
    private String verifyCode;

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }
}
