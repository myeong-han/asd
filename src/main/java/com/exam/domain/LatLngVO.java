package com.exam.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class LatLngVO {
	
	private double lat;
	private double lng;
	private int unum;
	private double distance;
	private Double rng;
}
