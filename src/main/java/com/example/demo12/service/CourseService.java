package com.example.demo12.service;

import com.example.demo12.mapper.CourseMapper;
import com.example.demo12.mapper.UserMapper;
import com.example.demo12.model.Academy;
import com.example.demo12.model.Course;
import com.example.demo12.model.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;


@Service
public class CourseService {

    @Autowired
    private CourseMapper courseMapper;
    public List<Course> getCourseList(){
        return courseMapper.getCourses();
    }
    public List<Course> getCourseHistorys(String userId) {
        return courseMapper.getCoursesByUserId(userId);
    }
    public List<Course> getCourseHistorysNoReview(String userId) {
        return courseMapper.getCoursesByUserIdNoReview(userId);
    }
    public List<Academy> getAcademyAreas() {
        return courseMapper.getAcademyAreas();
    }
    public List<Course> getCourseRecommends(HashMap<String, Object> prams) {
        return courseMapper.getCoursesByAreaJob(prams);
    }
}
