package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Council;

@Service
public interface CouncilService {
	
	public abstract Council SelectCouncil(Council input) throws Exception;
	
	public abstract List<Council> SelectBusin(Council input) throws Exception;

}