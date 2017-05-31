package cn.st.action;

import javax.servlet.ServletRequest;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.st.entity.User;
import cn.st.service.UserService;

public class RegisterAction extends ActionSupport implements ModelDriven<User>{
	
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
 		// TODO Auto-generated method stub
 		return user;
 	}
     
	@Override
    public String execute() throws Exception {
		 ActionContext.getContext().put("msg","");
		 System.out.println(user.getUsername());
		boolean flag=userService.select(user.getUsername());
		if(!flag) {
    	userService.add(user);
    	ActionContext.getContext().getSession().put("user",user);
    
		}
		 ActionContext.getContext().put("msg","用户名已经注册过!");
		 return NONE; 
	}

	
}
