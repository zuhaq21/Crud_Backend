
package com.employeeForm.demo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
class EmployeeService {
    @Autowired
    private EmployeeRepository repo; 
    
    public Employee registerEmployee(Employee emp)
    {
        return repo.save(emp);
    }
    
    public List<Employee> getEmployees() {
        return (List<Employee>) repo.findAll();
    }
    
    public void deleteEmployee(long id) {
        repo.deleteById(id);
    }
    
    public Employee updateEmployee(Employee emp) {
        long id = emp.getId();
        Employee obj = repo.findById(id).get();
        obj.setfName(emp.getfName());
        obj.setlName(emp.getlName());
        obj.setDob(emp.getDob());
        obj.setIdCardNumber(emp.getIdCardNumber());
        obj.setMobileNumber(emp.getMobileNumber());
        obj.setLandline(emp.getLandline());
        obj.setSecondaryContact(emp.getSecondaryContact());
        obj.setTemporaryAddress(emp.getTemporaryAddress());
        obj.setPermanentAddress(emp.getPermanentAddress());
        
        return repo.save(obj);
    }
}
