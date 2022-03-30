package study.spring.seoulspring.model;

import lombok.Data;

@Data
public class Reservation {
	
	private String startime;
	private String endtime;
	private String date;
	private String membername;
	private String phonenum;
	private int studentid;
	private int peoplenum;
}
