package com.pwpew.dao;

import com.pwpew.entity.TUser;
import com.pwpew.modeldriven.UserMd;

import java.util.List;

/**
 * @author miaoyin
 * @date 2020/5/8 - 9:28
 * @commet:
 */
public interface UserDao {

    //增删改查
    //查询所有用户
    public List<TUser> findUser();
    public TUser getUser(TUser user);
    public void updateUser(TUser user);
    public void deleteUser(TUser user);
    public void insertUser(TUser user);

    //分页查询用户
    public List<TUser> findUserByPage(UserMd user,int firstResult,int maxResults);
    //查询用户总数，用于分页
    public Long findUserCount(UserMd user);
    //通过帖子编号查找对应的用户
    public TUser findUserByPostId(int postId);
    //在账号管理处进行个人信息更新
    public int updateUserOfAccount(TUser user);
}
