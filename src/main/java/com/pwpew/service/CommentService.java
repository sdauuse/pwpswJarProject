package com.pwpew.service;

import com.pwpew.entity.TComment;
import com.pwpew.modeldriven.CommentMd;

import java.util.List;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:30
 * @commet:
 */
public interface CommentService {
    public void insertComment(TComment comment);
    public Long findCommentCount(CommentMd commentMd);
    public List<TComment> findCommentByPage(CommentMd commentMd, int firstResult, int maxResults);
}
