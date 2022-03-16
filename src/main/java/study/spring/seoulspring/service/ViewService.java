package study.spring.seoulspring.service;


import study.spring.seoulspring.model.View;

public interface ViewService {
	public abstract int ViewCountUpdate(View input) throws Exception;
	
	public abstract View ViewItem() throws Exception;

}
