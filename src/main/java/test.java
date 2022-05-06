import java.util.regex.*;

public class test {

	public static void main(String[] args) {
		String regex = "([\\p{Alnum}]+)://([a-z0-9ㄱ-ㅎ가-힣.\\-&/%=?:@#$(),.+;~\\_]+)";
		String strHTML = "https://us-east-2.console.aws.amazon.com/ec2/v2/home?region=us-east-2#Instances:";

		Pattern p = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(strHTML);
		String s = m.replaceAll("<a href='http://$2' target=_blank>http://$2</a>");
		System.out.println(s);
		// TODO Auto-generated method stub

	}

}
