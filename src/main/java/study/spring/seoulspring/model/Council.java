package study.spring.seoulspring.model;

import lombok.Data;
import study.spring.seoulspring.model.Business;

@Data
public class Council {

	private int cnum;
	private String cname;
	private String ccapt;
	private String cdept;
	private String cintro;
	private String stunum;
	private String img;
	
	//business
	
	private String bname;
	private int bnum;
	private int bnum_for;
	private String busin;
}
