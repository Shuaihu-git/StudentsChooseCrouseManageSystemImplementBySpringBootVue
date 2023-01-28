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
@Alias("SCTInfo")
public class SCTInfo {
    private Integer sid;
    private Integer tid;
    private Integer cid;
    private String sname;
    private String tname;
    private String cname;
    private Float grade;
    private String term;
}
