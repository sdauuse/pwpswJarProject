package com.pwpew.web.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.pwpew.entity.TComment;
import com.pwpew.entity.TPost;
import com.pwpew.modeldriven.CommentMd;
import com.pwpew.modeldriven.PostMd;
import com.pwpew.service.CommentService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * @author QIN
 * @date 2020/5/26 - 19:38
 * @commet:
 */
@Controller("commentAction")
@Scope("prototype")
public class CommentAction extends ActionSupport implements ModelDriven<TComment> {
    @Autowired
    private CommentService commentService;
    private CommentMd commentMd = new CommentMd();

    @Override
    public CommentMd getModel(){
        return commentMd;
    }

    public String insertComment(){

        Calendar calendar= Calendar.getInstance();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");

        TComment comment = new TComment();
        comment.setPostId(commentMd.getPostId());
        comment.setCommentTime(dateFormat.format(calendar.getTime()));

        // 第一个为源对象，第二个为目标对象，将源对象中属性值拷贝到目标对象中，源和目标对象不能为空，属性名称一样方可拷贝
        BeanUtils.copyProperties(commentMd, comment);

        commentService.insertComment(comment);

        return "insertComment";
    }

}
