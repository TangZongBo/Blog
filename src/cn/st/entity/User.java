package cn.st.entity;

import java.util.HashSet;
import java.util.Set;

/*
 * 用户类
 */
public class User {
	
	       private Integer uid;//user类的id
           private String username;//用户名
           private String password;//密码
           private String sex;//性别
           
           //一个用户可以写多篇博客,但是一篇博客必须是由一个用户编写的
           //private Set<Bowen> setBowen=new HashSet<Bowen>();
           
		
		/*public Set<Bowen> getSetBowen() {
			return setBowen;
		}
		public void setSetBowen(Set<Bowen> setBowen) {
			this.setBowen = setBowen;
		}
		*/
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
