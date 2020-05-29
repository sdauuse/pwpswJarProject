package com.pwpew.service;

import com.pwpew.entity.TPost;
import com.pwpew.modeldriven.PostMd;

import java.util.List;

/**
 * @author miaoyin
 * @date 2020/5/21 - 14:31
 * @commet:
 */
public interface PostService {

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

    //修改帖子状态，相当于是否删除帖子, status 0为删除，1为正常
    public void updateStatueAndEff(PostMd postMd);

    //获取特定类型的帖子,maxResults是查询数目，firstResult是查询起始索引，从0开始
    public List<TPost> getPostByPostType(String postType,int maxResults,int firstResult);

    //根据姓名或描述搜索帖子
    public List<TPost> findPostByNameOrDescribe(String nameOrDescribe,int firestResult,int maxResult);


}
