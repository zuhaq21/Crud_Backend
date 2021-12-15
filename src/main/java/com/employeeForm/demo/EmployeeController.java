package com.employeeForm.demo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(allowedHeaders = "*", origins = "*")
public class EmployeeController {
    @Autowired
    EmployeeService service;
    
    //register Employee
    @PostMapping("/registerEmployee")
    public Employee add(@RequestBody Employee emp) {
        return service.registerEmployee(emp);
    }
    
    //get all Employees
    @GetMapping("/getEmployees")
    public List<Employee> getEmployees() {
        
        return service.getEmployees();
    }
    
    //update Employee
    @PutMapping("/updateEmployee")
    public Employee updateEmployee(@RequestBody Employee emp) {
        return service.updateEmployee(emp);
    }
    
    //delete Employee
    @DeleteMapping("/deleteEmployee")
    public void deleteEmployee(@RequestParam long id) {
        service.deleteEmployee(id);
    }
}
