package com.tz.entity;

import lombok.Data;

import java.util.List;

@Data
public class Province {
	private Long id;
	private String name;
	private String code;
	
	private List<City> cities;
}
