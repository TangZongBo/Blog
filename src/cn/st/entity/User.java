/**
 * 
 */
package cn.st.entity;

import java.util.HashSet;
import java.util.Set;


public class User {

	  private Integer uid;
      private String username;
      private String password;
      private String sex;
      
	
	public Integer getUid() {
		return uid;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", sex=" + sex + "]";
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
