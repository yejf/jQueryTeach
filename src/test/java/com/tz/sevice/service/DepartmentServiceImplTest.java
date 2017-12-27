package com.tz.sevice.service;

import com.tz.sevice.BasicTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class DepartmentServiceImplTest extends BasicTest{

    @Autowired
    DepartmentService departmentService;

    @Test
    public void testFindDepById(){
        System.out.println(departmentService.findDepById(1L));
    }
}