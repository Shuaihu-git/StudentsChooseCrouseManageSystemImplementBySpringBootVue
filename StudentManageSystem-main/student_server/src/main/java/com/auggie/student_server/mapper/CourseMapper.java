package com.auggie.student_server.mapper;

import com.auggie.student_server.entity.Course;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author 张帅虎
 * @Data 2023/1/28
 */


@Repository
@Mapper
public interface CourseMapper {
//    select
    public List<Course> findBySearch(@Param("cid") Integer cid,
                                     @Param("cname") String cname, @Param("fuzzy") Integer fuzzy,
                                     @Param("lowBound") Integer lowBound, @Param("highBound") Integer highBound);

//    insert
    public boolean insertCourse(@Param("course") Course course);

//    update
    public boolean updateById(@Param("course") Course course);

//    delete
    public boolean deleteById(@Param("cid") Integer cid);
}
