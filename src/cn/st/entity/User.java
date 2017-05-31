package cn.st.entity;

/*
 * 用户类
 */
public class User {
	
	       private Integer uid;//user类的id
           private String username;//用户名
           private String password;//密码
           private String sex;//性别
          
		@Override
		public String toString() {
			return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", sex=" + sex + "]";
		}
		public Integer getUid() {
			return uid;
		}
		public void setUid(Integer uid) {
			this.uid = uid;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
}
