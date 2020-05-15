package com.pwpew.dao;

import com.pwpew.entity.TNotice;
import com.pwpew.modeldriven.NoticeMd;

import java.util.List;

/**
 * @author miaoyin
 * @date 2020/5/13 - 9:51
 * @commet:
 */
public interface NoticeDao {

    //增删改查
    //查询所有通告
    public List<TNotice> findNotice();
    public TNotice getNotice(int id);
    public void updateNotice(TNotice notice);
    public void deleteNotice(TNotice notice);
    public void insertNotice(TNotice notice);

    //分页查询用户
    public List<TNotice> findNoticeByPage(NoticeMd noticeMd, int firstResult, int maxResults);
    //查询用户总数，用于分页
    public Long findNoticeCount(NoticeMd noticeMd);
}
