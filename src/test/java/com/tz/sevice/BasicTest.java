package com.tz.sevice;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//测试顶级父类
//表示使用JUnit4进行单元测试,可以省略
@RunWith(SpringJUnit4ClassRunner.class)
//表示加载spring配置文件
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class BasicTest extends AbstractJUnit4SpringContextTests {

}
