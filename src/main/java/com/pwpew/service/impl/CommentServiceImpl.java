package com.pwpew.service.impl;

import com.pwpew.dao.CommentDao;
import com.pwpew.entity.TComment;
import com.pwpew.entity.TPost;
import com.pwpew.modeldriven.CommentMd;
import com.pwpew.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:30
 * @commet:
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentDao commentDao;

    public void insertComment(TComment comment){
        commentDao.insertComment(comment);
    }

    public Long findCommentCount(CommentMd commentMd){
        return commentDao.findCommentCount(commentMd);
    }

    public List<TComment> findCommentByPage(CommentMd commentMd, int firstResult, int maxResults){
        List<TComment> list = commentDao.findCommentByPage(commentMd, firstResult, maxResults);

        for (TComment comment:list) {
            comment.getUser().setUserPassword(null);
        }
        return  list;
    }
}
