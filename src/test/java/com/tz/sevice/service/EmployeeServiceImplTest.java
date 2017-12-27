package com.tz.sevice.service;

import com.tz.sevice.BasicTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class EmployeeServiceImplTest extends BasicTest {

    @Autowired
    EmployeeService employeeService;

    @Test
    public void testFindEmpById() {
        System.out.println(employeeService.findEmpById(1L));
    }
}