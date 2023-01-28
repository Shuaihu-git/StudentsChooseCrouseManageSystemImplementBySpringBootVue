package com.auggie.student_server.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

/**
 * @Author 张帅虎
 * @Data 2023/1/28
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@Alias("Course")
public class Course {
    private Integer cid;
    private String cname;
    private Integer ccredit;
}
