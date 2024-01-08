package com.divs.dto;

public class Employee {
	
	private Integer eno;
	private String ename;
	private Integer bsalary;
	private float grosssalary;
	private float netsalary;
	static {
		System.out.println("Employee class is loading...");
	}
	public Employee(){
		System.out.println("Employee dto is instantiated..");
	}
	
	@Override
	public String toString() {
		return "Employee [eno=" + eno + ", ename=" + ename + ", bsalary=" + bsalary + ", grosssalary=" + grosssalary
				+ ", netsalary=" + netsalary + "]";
	}
	public Integer getEno() {
		return eno;
	}
	public void setEno(Integer eno) {
		this.eno = eno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public Integer getBsalary() {
		return bsalary;
	}
	public void setBsalary(Integer bsalary) {
		this.bsalary = bsalary;
	}
	public float getGrosssalary() {
		return grosssalary;
	}
	public void setGrosssalary(float grosssalary) {
		this.grosssalary = grosssalary;
	}
	public float getNetsalary() {
		return netsalary;
	}
	public void setNetsalary(float netsalary) {
		this.netsalary = netsalary;
	}

}
