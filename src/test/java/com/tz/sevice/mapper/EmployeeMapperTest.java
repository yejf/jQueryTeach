package com.tz.sevice.mapper;

import com.tz.sevice.BasicTest;
import com.tz.entity.Department;
import com.tz.entity.Employee;
import com.tz.entity.SearchPojo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class EmployeeMapperTest extends BasicTest {

    @Autowired
    EmployeeMapper employeeMapper;

    @Test
    public void testInsertEmp() {
        Employee emp = new Employee();
        Department dep = new Department();
        dep.setDeptid(1L);
        emp.setDepart(dep);
        emp.setEgendar(1);
        emp.setEmpdate(new Date());
        emp.setEname("alex");
        employeeMapper.insertEmp(emp);
    }

    @Test
    public void testUpdateEmp() {
        Employee emp = new Employee();
        emp.setEmpid(1L);
        emp.setEgendar(0);
        emp.setEmpdate(new Date());
        emp.setEname("blues");
        employeeMapper.updateEmp(emp);
    }

    @Test
    public void testSelectEmpById() {
        System.out.println(employeeMapper.selectEmpById(1L));
    }

    @Test
    public void testDeleteEmp() {
        employeeMapper.deleteEmp(3L);
    }

    @Test
    public void testSelectAllEmp() {
        employeeMapper.selectAllEmp();
        System.out.println(">>>");
        employeeMapper.selectAllEmp();
    }

    @Test
    public void testSelectEmpsByCondition() {
        SearchPojo search = new SearchPojo();
        search.setDepname("教");
        employeeMapper.selectEmpsByCondition(search).forEach(System.out::println);
    }
}
