package com.pwpew.service;

import com.pwpew.entity.TComment;
import com.pwpew.modeldriven.CommentMd;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:30
 * @commet:
 */
public interface CommentService {
    public void insertComment(TComment comment);
    public Long findCommentCount(CommentMd commentMd);
}
