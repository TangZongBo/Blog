package cn.st.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.st.entity.User;
import cn.st.service.UserService;

/*
 * 登录
 */
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
            	
            	if(string.contains("用户")) {//用返回的字符串来判断状态
            		ActionContext.getContext().put("msg","用户不存在!");
            		return NONE;
            	}
            	if(string.contains("密码")) {//用返回的字符串来判断状态
            		ActionContext.getContext().put("msg","用户密码错误!");
            		return ERROR;
            	}
            	
            	//以下是用户名和密码匹配情况下执行
            	User user=userService.getUser();//返回user信息
            	ActionContext.getContext().getSession().put("user",user);//往session中存储用户信息
            	ActionContext.getContext().getSession().put("page",1);//设置page(设置为第1页)
            	ActionContext.getContext().getSession().put("msg", null);//设置当前错误为null(没有)
            	return SUCCESS;
            }
     
}
