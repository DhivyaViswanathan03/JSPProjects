package com.divs.bean;

public class Student {
	
	private int id;
	private String name;
	private String address;
	private int age;
	static{
		System.out.println("Student class is loading....");
	}
	
	public Student(){
		System.out.println("Student object is created...");
	}
	public int getId() {
		System.out.println("Student.getId()");
		return id;
	}
	public void setId(int id) {
		System.out.println("Student.setId()");
		this.id = id;
	}
	public String getName() {
		System.out.println("Student.getName()");
		return name;
	}
	public void setName(String name) {
		System.out.println("Student.setName()");
		this.name = name;
	}
	public String getAddress() {
		System.out.println("Student.getAddress()");
		return address;
	}
	public void setAddress(String address) {
		System.out.println("Student.setAddress()");
		this.address = address;
	}
	public int getAge() {
		System.out.println("Student.getAge()");
		return age;
	}
	public void setAge(int age) {
		System.out.println("Student.setAge()");
		this.age = age;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", address=" + address + ", age=" + age + "]";
	}

}
