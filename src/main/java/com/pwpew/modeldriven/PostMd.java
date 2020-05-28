package com.pwpew.modeldriven;

import com.alibaba.fastjson.annotation.JSONField;
import com.pwpew.entity.TPost;

import java.sql.Timestamp;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:00
 * @commet:
 */
public class PostMd extends TPost {

    // easyUi分页参数
    private int page;
    private int rows;

    public CommentMd getCommentMd() {
        return commentMd;
    }

    public void setCommentMd(CommentMd commentMd) {
        this.commentMd = commentMd;
    }

    private CommentMd commentMd;

    //扩展的查询条件，起始时间
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Timestamp postDate;

    //结束时间
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
    private Timestamp postDate_end;

    public Timestamp getPostDate() {
        return postDate;
    }

    public void setPostDate(Timestamp postDate) {
        this.postDate = postDate;
    }

    public Timestamp getPostDate_end() {
        return postDate_end;
    }

    public void setPostDate_end(Timestamp postDate_end) {
        this.postDate_end = postDate_end;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }
}
