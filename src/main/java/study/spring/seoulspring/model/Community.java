package study.spring.seoulspring.model;

import lombok.Data;

@Data
public class Community {
	private int postno;
	private String postcategory;
	private String posttype;
	private String posttitle;
	private String postcontent;
	private String postdate;
	private String postpublic;
	private int postview;
	private String name;
	
	private static int offset;
	private static int listCount;
	public static int getOffset() {
		return offset;
	}
	public static void setOffset(int offset) {
		Community.offset = offset;
	}
	public static int getListCount() {
		return listCount;
	}
	public static void setListCount(int listCount) {
		Community.listCount = listCount;
	

}
}
