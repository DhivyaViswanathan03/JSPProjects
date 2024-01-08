package com.divs.service;

import com.divs.dto.Employee;

public class SalaryGeneratorServiceImpl implements SalaryGeneratorService {
	static {
		System.out.println("SalaryGeneratorServiceImpl is loading...");
	}
	public SalaryGeneratorServiceImpl() {
		System.out.println("SalaryGeneratorServiceImpl is instantiated..");
	}

	@Override
	public void generateSalaryDetails(Employee e) {
		float grossSalary=e.getBsalary()+(e.getBsalary()*0.3f);
		float netSalary=grossSalary-(e.getBsalary()*0.2f);
		e.setGrosssalary(grossSalary);
		e.setNetsalary(netSalary);
	}

}
