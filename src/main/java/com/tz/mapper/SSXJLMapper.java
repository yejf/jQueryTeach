package com.tz.mapper;

import com.tz.entity.Area;
import com.tz.entity.City;
import com.tz.entity.Province;
import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface SSXJLMapper {

    List<Province> selectAllProvinces();

    List<City> selectCitysByProvinceCode(@Param("provinceCode") String provinceCode);

    List<Area> selectAreasByCityCode(@Param("cityCode") String cityCode);
}
