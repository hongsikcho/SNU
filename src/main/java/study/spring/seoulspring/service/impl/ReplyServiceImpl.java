package study.spring.seoulspring.service.impl;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Reply;
import study.spring.seoulspring.service.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<Reply> selectList(Reply input) throws Exception{
		List<Reply> result = new ArrayList<Reply>();
		result = sqlSession.selectList("ReplyMapper.selectList",input);
		return result;
		
	}
	
	@Override
	public int insertPost(Reply input) throws Exception {
		int result = 0;
		result = sqlSession.insert("ReplyMapper.insertPost", input);
		return result;
	}
	
	@Override
	public int DeletePost(Reply input) throws Exception {
		int result =0;
		result = sqlSession.delete("ReplyMapper.deletePost", input);
		return result;
	}
}
