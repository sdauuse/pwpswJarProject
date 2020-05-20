package com.pwpew.entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "t_post", schema = "welfare_people_seeking")
public class TPost {
    private int postId;
    private String postType;
    private String postName;
    private String postGender;
    private Integer postAge;
    private Timestamp missingtime;
    private String postProvince;
    private String postCity;
    private String postCountry;
    private String postStreet;
    private String postDescribe;
    private int commentId;
    private byte effectiveness;

    @Id
    @Column(name = "postId", nullable = false)
    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    @Basic
    @Column(name = "postType", nullable = false, length = 16)
    public String getPostType() {
        return postType;
    }

    public void setPostType(String postType) {
        this.postType = postType;
    }

    @Basic
    @Column(name = "postName", nullable = true, length = 32)
    public String getPostName() {
        return postName;
    }

    public void setPostName(String postName) {
        this.postName = postName;
    }

    @Basic
    @Column(name = "postGender", nullable = true, length = 4)
    public String getPostGender() {
        return postGender;
    }

    public void setPostGender(String postGender) {
        this.postGender = postGender;
    }

    @Basic
    @Column(name = "postAge", nullable = true)
    public Integer getPostAge() {
        return postAge;
    }

    public void setPostAge(Integer postAge) {
        this.postAge = postAge;
    }

    @Basic
    @Column(name = "missingtime", nullable = true)
    public Timestamp getMissingtime() {
        return missingtime;
    }

    public void setMissingtime(Timestamp missingtime) {
        this.missingtime = missingtime;
    }

    @Basic
    @Column(name = "postProvince", nullable = true, length = 32)
    public String getPostProvince() {
        return postProvince;
    }

    public void setPostProvince(String postProvince) {
        this.postProvince = postProvince;
    }

    @Basic
    @Column(name = "postCity", nullable = true, length = 32)
    public String getPostCity() {
        return postCity;
    }

    public void setPostCity(String postCity) {
        this.postCity = postCity;
    }

    @Basic
    @Column(name = "postCountry", nullable = true, length = 32)
    public String getPostCountry() {
        return postCountry;
    }

    public void setPostCountry(String postCountry) {
        this.postCountry = postCountry;
    }

    @Basic
    @Column(name = "postStreet", nullable = true, length = 32)
    public String getPostStreet() {
        return postStreet;
    }

    public void setPostStreet(String postStreet) {
        this.postStreet = postStreet;
    }

    @Basic
    @Column(name = "postDescribe", nullable = true, length = 128)
    public String getPostDescribe() {
        return postDescribe;
    }

    public void setPostDescribe(String postDescribe) {
        this.postDescribe = postDescribe;
    }

    @Basic
    @Column(name = "commentId", nullable = false)
    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    @Basic
    @Column(name = "effectiveness", nullable = false)
    public byte getEffectiveness() {
        return effectiveness;
    }

    public void setEffectiveness(byte effectiveness) {
        this.effectiveness = effectiveness;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TPost tPost = (TPost) o;
        return postId == tPost.postId &&
                commentId == tPost.commentId &&
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
                Objects.equals(postDescribe, tPost.postDescribe);
    }

    @Override
    public int hashCode() {
        return Objects.hash(postId, postType, postName, postGender, postAge, missingtime, postProvince, postCity, postCountry, postStreet, postDescribe, commentId, effectiveness);
    }
}
