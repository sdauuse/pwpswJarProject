package com.pwpew.service;

import com.pwpew.entity.TVolunteer;
import com.pwpew.modeldriven.VolunteerMd;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

public interface VolunteerService {

    public List<TVolunteer> findVolunteer();
    public VolunteerMd getVolunteerById(int volId);
    public void updateVolunteer(int volId, VolunteerMd volunteer);
    public void deleteVolunteerById(int volId);
    public void insertVolunteer(VolunteerMd volunteer) throws InvocationTargetException, IllegalAccessException;

    //分页查询用户
    public List<TVolunteer> findVolunteerByPage(VolunteerMd volunteer, int firstResult, int maxResults);
    //查询用户总数，用于分页
    public Long findVolunteerCount(VolunteerMd volunteer);
}
