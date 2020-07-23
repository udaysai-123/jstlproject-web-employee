package org.dxc.employee.model;

public class Employee {
	private int id;
	private String name;
	private double salary;
	public boolean bonus;
	public Employee(int id, String name, double salary, boolean bonus) {
		super();
		this.id = id;
		this.name = name;
		this.salary = salary;
		this.bonus = bonus;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public boolean isBonus() {
		return bonus;
	}
	public void setBonus(boolean bonus) {
		this.bonus = bonus;
	}
	
	

}
