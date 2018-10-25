package test.ch07;

public class LoginBean {

	String userid;
	String pwd;
	
	final String _userid ="myuser";
	final String _pwd = "1234";
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String get_userid() {
		return _userid;
	}
	public String get_pwd() {
		return _pwd;
	}
	
	public boolean checkUser() {
		if(userid.equals(_userid)&& pwd.equals(_pwd)) {
			return true;
		}
		else 
			return false;
	}
}
