package cn.st.action;

import javax.servlet.ServletRequest;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.st.entity.User;
import cn.st.service.UserService;

/*
 * 注册
 */
public class RegisterAction extends ActionSupport implements ModelDriven<User>{//使用了模型驱动封装实现了ModelDriver接口
	
	private UserService userService;
	
	private User user;
	
	
     public void setUserService(UserService userService) {
		this.userService = userService;
	}

     
     public void setUser(User user) {
		this.user = user;
	}


	@Override
 	public User getModel() {
 		return user;
 	}
     
	@Override
    public String execute() throws Exception {
		 ActionContext.getContext().put("msg","");//设置当前没有错误
		boolean flag=userService.select(user.getUsername());//查询当前用户名是否已经存在
		if(!flag) {//不存在
    	userService.add(user);//数据库中添加当前用户名信息
    	ActionContext.getContext().getSession().put("user",user);//在session中存储user信息
    	ActionContext.getContext().getSession().put("msg",null);//设置当前没有错误
   	 	return SUCCESS;
		}
		 ActionContext.getContext().put("msg","用户名已经注册过!");//当注册的用户名已经存在,返回注册页,并显示用户名已经注册过
		 return NONE; 
	}

	
}
