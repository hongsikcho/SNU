package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Department;


@Service
public interface DepartmentService {

	public abstract Department SelectDepartment(Department input) throws Exception;

}
