package com.pwpew.dao;

import com.pwpew.entity.TPost;
import com.pwpew.modeldriven.PostMd;

import java.util.List;

public interface PostDao {

    //帖子的基础增删改查
    public List<TPost> findPostList();
    public TPost getPostById(int postId);
    public void insertPost(TPost post);
    public void deletePost(TPost post);
    public void updatePost(TPost post);


    //分页查询帖子
    public List<TPost> findPostByPage(PostMd postMd, int firstResult, int maxResults);
    //查询帖子总数，用于分页
    public Long findPostCount(PostMd postMd);

    //修改帖子删除状态和帖子封禁状态，相当于是否删除帖子和是否封禁帖子, status 0为删除，1为正常;Effectiveness 0为封禁，1为正常
    public void updateStatueAndEff(PostMd postMd);

    public void replyPost(int postId);

    //获取特定类型的帖子
    public List<TPost> getPostByPostType(String postType,int maxResults,int firstResult);
}
