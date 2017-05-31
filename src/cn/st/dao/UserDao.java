package cn.st.dao;

import cn.st.entity.User;

public interface UserDao {
            
	 public void add(User user);//注册用户添加
	 
	 public void update();//修改用户信息
	 
	 public boolean select(String username);//查询是否存在
	 
	 public String select(String username,String password);//查询用户名和密码是否匹配
}
