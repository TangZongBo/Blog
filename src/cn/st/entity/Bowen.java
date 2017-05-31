package cn.st.entity;

import java.util.Date;

/*
 * 博文类
 */
public class Bowen {
	
        private Integer bid;//博文id
        private String name;//博文名
        private String content;//博文内容
        private String code;//博文HTML代码
        private Integer autherid;//博文作者id
        private Date time;//博文最近修改的时间
        
		public Date getTime() {
			return time;
		}
		public void setTime(Date time) {
			this.time = time;
		}
		public Integer getAutherid() {
			return autherid;
		}
		public void setAutherid(Integer autherid) {
			this.autherid = autherid;
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
}
