package cn.st.service;

import org.springframework.transaction.annotation.Transactional;

import cn.st.dao.UserDao;
import cn.st.entity.User;

@Transactional
public class UserService {
         
	 
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void add(User user) {//添加用户
		System.out.println("add service.........");
		userDao.add(user);
	}
	
	public boolean select(String username) {//查询用户名是否已经用过
	       return userDao.select(username);
	}
	
	public String select(String username,String password) {//判断用户名是否存在并且匹配密码
		    return userDao.select(username, password);
	}
	
	public void update() {//对用户的修改
		System.out.println("update service.........");
		userDao.update();
	}
}
