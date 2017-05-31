package cn.st.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.st.entity.User;
import cn.st.service.UserService;

public class LoginAction extends ActionSupport{
	
	
	    private UserService userService;
	    
	    private String username;
	    
	    private String password;

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public UserService getUserService() {
			return userService;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}
	    
         public void setUserService(UserService userService) {
			this.userService = userService;
		}

			@Override
            public String execute() throws Exception {
            	String string=userService.select(username,password);//查询用户名是否存在
            	if(string.contains("用户")) {
            		ActionContext.getContext().put("msg","用户不存在!");
            		return NONE;
            	}
            	if(string.contains("密码")) {
            		ActionContext.getContext().put("msg","用户密码错误!");
            		return ERROR;
            	}
            	
            	User user=new User();
            	user.setUsername(username);
            	user.setPassword(password);
            	ActionContext.getContext().getSession().put("user",user);
            	return SUCCESS;
            }

		

	         
}
