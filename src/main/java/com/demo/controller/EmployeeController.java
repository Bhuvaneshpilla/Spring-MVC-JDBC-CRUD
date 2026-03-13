package com.demo.controller;

import com.demo.dao.EmployeeDAO;
import com.demo.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeDAO dao;

    @RequestMapping("/list")
    public ModelAndView home() {
        List<Employee> list = dao.getEmployee();
        return new ModelAndView("listEmployees", "list", list);
    }

    @RequestMapping("/addEmployee")
    public String showAddForm() {
        return "addEmployee";
    }

    @RequestMapping(value="/save", method=RequestMethod.POST)
    public String save(@ModelAttribute("emp") Employee emp) {
        dao.save(emp);
        return "redirect:/list";
    }

    @RequestMapping("/edit/{id}")
    public ModelAndView edit(@PathVariable int id) {
        Employee emp = dao.getEmployeeById(id);
        return new ModelAndView("updateEmployee", "command", emp);
    }

    @RequestMapping(value="/update", method=RequestMethod.POST)
    public String update(@ModelAttribute("emp") Employee emp) {
        dao.update(emp);
        return "redirect:/list";
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/list";
    }
}
