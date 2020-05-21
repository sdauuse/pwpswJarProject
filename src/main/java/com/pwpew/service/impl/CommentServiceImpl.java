package com.pwpew.service.impl;

import com.pwpew.dao.CommentDao;
import com.pwpew.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:30
 * @commet:
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentDao commentDao;

}
