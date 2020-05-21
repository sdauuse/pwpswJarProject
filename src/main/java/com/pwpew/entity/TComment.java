package com.pwpew.entity;

import java.util.Objects;

/**
 * @author miaoyin
 * @date 2020/5/21 - 13:47
 * @commet:
 */
public class TComment {
    private int commentId;
    private String comments;
    private String commentTime;

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(String commentTime) {
        this.commentTime = commentTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TComment tComment = (TComment) o;
        return commentId == tComment.commentId &&
                Objects.equals(comments, tComment.comments) &&
                Objects.equals(commentTime, tComment.commentTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(commentId, comments, commentTime);
    }
}
