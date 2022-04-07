package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Reply;
@Service
public interface ReplyService {

	public abstract List<Reply> selectList(Reply input) throws Exception;
	public abstract int insertPost(Reply input) throws Exception;
	public abstract int DeletePost(Reply input) throws Exception ;
	
}
