package cn.st.dao;

import cn.st.entity.User;

public interface UserDao {
            
	 public void add(User user);//注册用户添加
	 
	 public void update1(int id,String username);//修改用户名
	 
	 public void update2(int id,String password);//修改密码
	 
	 public boolean select(String username);//查询是否存在
	 
	 public String select(String username,String password);//查询用户名和密码是否匹配

	 public User getUser();//返回用户信息
	 
	 public int findId(String username);//返回用户名的uid
}
