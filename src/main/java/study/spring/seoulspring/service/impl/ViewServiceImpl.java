package study.spring.seoulspring.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.View;
import study.spring.seoulspring.service.ViewService;

@Service
public class ViewServiceImpl implements ViewService {
	@Autowired
	SqlSession sqlSession;

	@Override
	public int ViewCountUpdate(View input) throws Exception {
		int result = 0;
		result = sqlSession.update("ViewMapper.updateSearchCount", input);
		return result;
	}

	@Override
	public View ViewItem() throws Exception {
		View output = null;
		output =sqlSession.selectOne("ViewMapper.selectItem", null);
		return output;
	}

}
