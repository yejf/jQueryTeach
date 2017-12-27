package com.tz.service;

import com.tz.entity.Area;
import com.tz.entity.City;
import com.tz.entity.Province;
import com.tz.mapper.SSXJLMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SsxjlServiceImpl implements SsxjlService {

	@Autowired
	SSXJLMapper mapper;

	@Override
	public List<Province> findAllProvinces() {
		return mapper.selectAllProvinces();
	}

	@Override
	public List<City> findCitysByProvinceCode(String provinceCode) {
		return mapper.selectCitysByProvinceCode(provinceCode);
	}

	@Override
	public List<Area> findAreasByCityCode(String cityCode) {
		return mapper.selectAreasByCityCode(cityCode);
	}
}
