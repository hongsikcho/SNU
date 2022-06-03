package study.spring.seoulspring.model;

import java.sql.Date;

import lombok.Data;

@Data
public class TimeTable {
	private String starttime;
	private String endtime;
	private int roomNum;
	private Date date;
	private int calendarNo;
	private String membername;
	
	private static int offset;
	private static int listCount;
	public static int getOffset() {
		return offset;
	}
	public static void setOffset(int offset) {
		TimeTable.offset = offset;
	}
	public static int getListCount() {
		return listCount;
	}
	public static void setListCount(int listCount) {
		TimeTable.listCount = listCount;
	

}
}
