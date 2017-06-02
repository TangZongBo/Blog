package cn.st.entity;

/**
 * 
 */


import java.util.Date;

public class Bowen {

	 private Integer bid;//博文id
     private String name;//博文名
     private String content;//博文内容
     private String code;//博文HTML代码
     private Date time;//博文最近修改的时间
     private Integer autherid;
     
 		private User user;
 		
 		private String context;

     
     public String getContext() {
			return context;
		}
		public void setContext(String context) {
			this.context = context;
		}
		
	public Integer getAutherid() {
		return autherid;
	}
	public void setAutherid(Integer autherid) {
		this.autherid = autherid;
	}


	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Bowen [bid=" + bid + ", name=" + name + ", content=" + content + ", code=" + code + ", time=" + time
				+ ", user=" + user + "]";
	}
     
     
}
