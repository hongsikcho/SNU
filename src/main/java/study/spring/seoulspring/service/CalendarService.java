package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Calendar;

@Service
public interface CalendarService {
	
	public abstract List<Calendar> selectList() throws Exception; 

}
