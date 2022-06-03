package study.spring.seoulspring.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Council;
import study.spring.seoulspring.model.sabum;
import study.spring.seoulspring.service.SabumService;

@Service
public class SabumServiceImpl implements SabumService {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<sabum> SelectSabum(sabum input) {
		List<sabum> result = new ArrayList<sabum>();
		result = sqlSession.selectList("SabumMapper.selectSabum", input);
		return result;
	}

}
