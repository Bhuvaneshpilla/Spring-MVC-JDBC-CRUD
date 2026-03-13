package com.demo.model;

public class Employee {
    private int id;
    private String name;
    private String email;
    private double phone;
    private String department;
    private String designation;
    private double salary;
    private String gender;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public double getPhone() {return phone;}
    public void setPhone(double phone) {this.phone = phone;}
    public String getDepartment() { return department; }
    public void setDepartment(String department) { this.department = department; }
    public String getDesignation() { return designation; }
    public void setDesignation(String designation) { this.designation = designation; }
    public double getSalary() { return salary; }
    public void setSalary(double salary) { this.salary = salary; }
    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }
}
