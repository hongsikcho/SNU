package study.spring.seoulspring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Department;
import study.spring.seoulspring.service.DepartmentService;

@Service
public class DepartmentServiceImpl implements DepartmentService {
	
	@Autowired
	SqlSession sqlSession;


	@Override
	public Department SelectDepartment(Department input) throws Exception {
		Department result = new Department();
		result = sqlSession.selectOne("DepartmentMapper.selectOne", input);
		return result;
	}


}
