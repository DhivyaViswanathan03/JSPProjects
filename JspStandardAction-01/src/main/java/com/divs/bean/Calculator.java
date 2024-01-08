package com.divs.bean;

public class Calculator {

	static {
		System.out.println("class is loading...");
	}
	
	public Calculator() {
		System.out.println("class object is created...");
	}
	
	public int Square(int x) {
		return x*x;
	}
}
