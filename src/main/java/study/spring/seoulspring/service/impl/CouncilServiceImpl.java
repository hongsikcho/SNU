package study.spring.seoulspring.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Council;
import study.spring.seoulspring.service.CouncilService;

@Service
public class CouncilServiceImpl implements CouncilService {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public Council SelectCouncil(Council input) throws Exception {
		Council result = new Council();
		result = sqlSession.selectOne("CouncilMapper.selectOne", input);
		return result;
	}
	
	@Override
	public List<Council> SelectBusin(Council input) throws Exception {
		List<Council> result = new ArrayList<>();
		
		result = sqlSession.selectList("CouncilMapper.selectBusiness", input);
		
		return result;
	}
}