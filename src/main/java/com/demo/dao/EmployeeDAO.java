package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.demo.model.Employee;

public class EmployeeDAO {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int save(Employee e) {
        String sql = "INSERT INTO employee(name,email,phone,department,designation, salary,gender) VALUES (?, ?, ?,?,?,?,?)";
        return jdbcTemplate.update(sql, e.getName(), e.getEmail(),e.getPhone(),e.getDepartment(),e.getDesignation(), e.getSalary(),e.getGender());
    }

    public List<Employee> getEmployee() {
        return jdbcTemplate.query("SELECT * FROM employee", new RowMapper<Employee>() {
            public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
                Employee e = new Employee();
                e.setId(rs.getInt("id"));
                e.setName(rs.getString("name"));
                e.setEmail(rs.getString("email"));
                e.setPhone(rs.getDouble("phone"));
                e.setDepartment(rs.getString("department"));
                e.setDesignation(rs.getString("designation"));
                e.setSalary(rs.getDouble("salary"));
                e.setGender(rs.getString("gender"));
                return e;
            }
        });
    }

    public Employee getEmployeeById(int id) {
        String sql = "SELECT * FROM employee WHERE id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, (rs, rowNum) -> {
            Employee e = new Employee();
            e.setId(rs.getInt("id"));
            e.setName(rs.getString("name"));
            e.setEmail(rs.getString("email"));
            e.setPhone(rs.getDouble("phone"));
            e.setDepartment(rs.getString("department"));
            e.setDesignation(rs.getString("designation"));
            e.setSalary(rs.getDouble("salary"));
            e.setGender(rs.getString("gender"));
            return e;
        });
    }

    public int update(Employee e) {
        String sql = "UPDATE employee SET name=?, email=?,phone=?, department=?,designation=? ,salary=?,gender=? WHERE id=?";
        return jdbcTemplate.update(sql, e.getName(),e.getEmail(),e.getPhone(), e.getDepartment(),e.getDesignation(), e.getSalary(),e.getGender(), e.getId());
    }

    public int delete(int id) {
        String sql = "DELETE FROM employee WHERE id=?";
        return jdbcTemplate.update(sql, id);
    }
}
