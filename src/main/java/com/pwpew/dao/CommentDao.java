package com.pwpew.dao;

import com.pwpew.entity.TComment;
import com.pwpew.modeldriven.CommentMd;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:03
 * @commet:
 */
public interface CommentDao {
    public void insertComment(TComment comment);
    public Long findCommentCount(CommentMd commentMd);// 分页查询
}
