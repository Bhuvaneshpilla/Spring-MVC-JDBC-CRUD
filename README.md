# Spring-MVC-JDBC-CRUD
Spring MVC JDBC CRUD App: A web app using Spring MVC, JDBC Template, JSP &amp; MySQL to manage employee records (add/view/update/delete). Demonstrates traditional Spring MVC architecture, DAO pattern, &amp; JDBC integration—perfect for beginners learning core fundamentals without Spring Boot. 


Spring MVC JDBC CRUD Application
Project Description

This project is a Spring MVC CRUD (Create, Read, Update, Delete) web application built using Spring MVC, JDBC Template, JSP, and MySQL. The application allows users to manage employee records through a web interface where they can add, view, update, and delete employee details.

The project demonstrates how to build a traditional Spring MVC architecture without Spring Boot, using DAO pattern, JDBC Template, and JSP views. It is useful for beginners who want to understand Spring MVC fundamentals and database integration using JDBC.

Features

Add new employee details

View list of employees

Update employee information

Delete employee records

MVC architecture implementation

Database interaction using Spring JDBC Template

JSP-based frontend UI

Technologies Used

Java

Spring MVC

Spring JDBC

JSP

MySQL

Maven

Apache Tomcat

Project Structure
spring-mvc-jdbc-crud
│
├── config
│   └── DBConfig.java
│
├── controller
│   └── EmployeeController.java
│
├── dao
│   └── EmployeeDAO.java
│
├── model
│   └── Employee.java
│
├── webapp
│   ├── addEmployee.jsp
│   ├── listEmployees.jsp
│   └── updateEmployee.jsp
│
└── WEB-INF
    ├── web.xml
    └── spring-servlet.xml
Database Table

Example MySQL table:

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(100)
);
How to Run the Project

Clone the repository

git clone https://github.com/your-username/spring-mvc-jdbc-crud.git

Import the project into Eclipse / IntelliJ as a Maven project

Configure MySQL database connection in DBConfig.java

Build the project

mvn clean install

Deploy the project on Apache Tomcat Server

Open in browser

http://localhost:8080/spring-mvc-jdbc-crud/
Learning Objectives

This project helps in understanding:

Spring MVC architecture

Controller, DAO, and Model layers

JDBC Template integration

JSP view rendering

CRUD operations with MySQL

Maven project structure
