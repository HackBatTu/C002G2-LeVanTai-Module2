package com.link.service;

import com.link.model.employee.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IEmployeeService {
    Page<Employee> findAllEmployee(String nameSearch, Pageable pageable);

    Employee save(Employee employee);

    List<Position> findAllPosition();

    List<EducationDegree> findAllEducationDegreeList();

    List<Division> findAllDivisionList();

    List<AppUser> findAllUser();

    Employee findById(Integer id);

    void deleteEmployee(Integer id);
}
