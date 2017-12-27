package com.tz.service;

import com.tz.entity.Area;
import com.tz.entity.City;
import com.tz.entity.Province;

import java.util.List;

public interface SsxjlService {
	
	List<Province> findAllProvinces();
	
	List<City> findCitysByProvinceCode(String provinceCode);
	
	List<Area> findAreasByCityCode(String cityCode);
}
