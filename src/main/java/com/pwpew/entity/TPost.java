package com.pwpew.entity;

import com.alibaba.fastjson.annotation.JSONField;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * @author miaoyin
 * @date 2020/5/21 - 15:37
 * @commet:
 */
public class TPost {

    private int postId;
    private String postType;
    private String postName;
    private String postGender;
    private Integer postAge;
    //被寻人失联时间
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Timestamp missingtime;

    private String postProvince;
    private String postCity;
    private String postCountry;
    private String postStreet;
    private String postDescribe;
    private String effectiveness;
    private String statue;

    //一个用户可以发表多个帖子,一个帖子只能由一个用户发布
    private TUser user;

    /* //一个帖子有多个评论，一个评论只能发表在一个帖子上
     private Set<TComment> comments = new HashSet<TComment>();
    public Set<TComment> getComments() {
        return comments;
    }

     public void setComments(Set<TComment> comments) {
         this.comments = comments;
     }*/

    public TUser getUser() {
        return user;
    }

    public void setUser(TUser user) {
        this.user = user;
    }


    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getPostType() {
        return postType;
    }

    public void setPostType(String postType) {
        this.postType = postType;
    }

    public String getPostName() {
        return postName;
    }

    public void setPostName(String postName) {
        this.postName = postName;
    }

    public String getPostGender() {
        return postGender;
    }

    public void setPostGender(String postGender) {
        this.postGender = postGender;
    }

    public Integer getPostAge() {
        return postAge;
    }

    public void setPostAge(Integer postAge) {
        this.postAge = postAge;
    }

    public Timestamp getMissingtime() {
        return missingtime;
    }

    public void setMissingtime(Timestamp missingtime) {
        this.missingtime = missingtime;
    }

    public String getPostProvince() {
        return postProvince;
    }

    public void setPostProvince(String postProvince) {
        this.postProvince = postProvince;
    }

    public String getPostCity() {
        return postCity;
    }

    public void setPostCity(String postCity) {
        this.postCity = postCity;
    }

    public String getPostCountry() {
        return postCountry;
    }

    public void setPostCountry(String postCountry) {
        this.postCountry = postCountry;
    }

    public String getPostStreet() {
        return postStreet;
    }

    public void setPostStreet(String postStreet) {
        this.postStreet = postStreet;
    }

    public String getPostDescribe() {
        return postDescribe;
    }

    public void setPostDescribe(String postDescribe) {
        this.postDescribe = postDescribe;
    }

    public String getEffectiveness() {
        return effectiveness;
    }

    public void setEffectiveness(String effectiveness) {
        this.effectiveness = effectiveness;
    }

    public String getStatue() {
        return statue;
    }

    public void setStatue(String statue) {
        this.statue = statue;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TPost tPost = (TPost) o;
        return postId == tPost.postId &&
                effectiveness == tPost.effectiveness &&
                Objects.equals(postType, tPost.postType) &&
                Objects.equals(postName, tPost.postName) &&
                Objects.equals(postGender, tPost.postGender) &&
                Objects.equals(postAge, tPost.postAge) &&
                Objects.equals(missingtime, tPost.missingtime) &&
                Objects.equals(postProvince, tPost.postProvince) &&
                Objects.equals(postCity, tPost.postCity) &&
                Objects.equals(postCountry, tPost.postCountry) &&
                Objects.equals(postStreet, tPost.postStreet) &&
                Objects.equals(postDescribe, tPost.postDescribe) &&
                Objects.equals(statue, tPost.statue);
    }

    @Override
    public int hashCode() {
        return Objects.hash(postId, postType, postName, postGender, postAge, missingtime, postProvince, postCity, postCountry, postStreet, postDescribe, effectiveness, statue);
    }
}
