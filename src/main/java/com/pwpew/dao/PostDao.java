package com.pwpew.dao;

import com.pwpew.entity.TPost;

import java.util.List;

public interface PostDao {
    public List<TPost> getPostList();
    public TPost findPost(int postId);
    public void addPost(TPost post);
    public void replyPost(int postId);
}
