package com.tz.sevice.mapper;


import com.tz.sevice.BasicTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class DepartmentMapperTest extends BasicTest {

    @Autowired
    DepartmentMapper departmentMapper;

    @Test
    public void testSelectDepById() {
        System.out.println(departmentMapper.selectDepById(1L));
    }

    @Test
    public void testSelectAllDeps(){
        departmentMapper.selectAllDeps().forEach(System.out::println);
    }
}
