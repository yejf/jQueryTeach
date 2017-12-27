package com.tz.controller;

import com.tz.entity.Area;
import com.tz.entity.City;
import com.tz.entity.Province;
import com.tz.service.SsxjlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/ssxjl")
public class SSXJLController {

    @Autowired
    SsxjlService ssxjlService;

    @ResponseBody
    @RequestMapping(value = "/getProvince", produces = "application/json")
    public List<Province> getProvince() {
        return ssxjlService.findAllProvinces();
    }

    @ResponseBody
    @RequestMapping(value = "/getCity", produces = "application/json")
    public List<City> getCity(String provinceCode) {
        return ssxjlService.findCitysByProvinceCode(provinceCode);
    }

    @ResponseBody
    @RequestMapping(value = "/getArea", produces = "application/json")
    public List<Area> getArea(String cityCode) {
        return ssxjlService.findAreasByCityCode(cityCode);
    }
}
