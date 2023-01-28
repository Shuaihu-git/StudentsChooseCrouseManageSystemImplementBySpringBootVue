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
@NoArgsConstructor
@AllArgsConstructor
@Alias("Student")
public class Student {
    private Integer sid;
    private String sname;
    private String password;
}
