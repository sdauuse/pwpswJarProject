package com.pwpew.dao;

import com.pwpew.entity.TComment;
import com.pwpew.modeldriven.CommentMd;
import com.pwpew.modeldriven.PostMd;

import java.util.List;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:03
 * @commet:
 */
public interface CommentDao {
    public void insertComment(TComment comment);
    public Long findCommentCount(CommentMd commentMd);
    public List<TComment> findCommentByPage(CommentMd commentMd, int firstResult, int maxResults);
}
