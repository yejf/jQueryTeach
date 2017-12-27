package com.tz.controller;

import com.tz.entity.ChartsBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/fusioncharts")
public class DataController {

    @ResponseBody
    @RequestMapping(value = "/getData", produces = "application/json")
    public ChartsBean getData() {
        ChartsBean cb = new ChartsBean();
        ChartsBean.ChartBean chart = new ChartsBean.ChartBean();
        chart.setCaption("月销量");
        chart.setSubCaption("大润发超市");
        chart.setXAxisName("月份");
        chart.setYAxisName("销量");
        chart.setNumberPrefix("￥");
        chart.setTheme("fint");
        cb.setChart(chart);

        List<ChartsBean.DataBean> data = new ArrayList<>();
        ChartsBean.DataBean db;
        for (int i = 1; i <= 12; i++) {
            db = new ChartsBean.DataBean();
            db.setLabel(i + "月");
            db.setValue(Math.random() * 10000 + 20000 + "");
            data.add(db);
        }
        cb.setData(data);
        return cb;
    }
}
