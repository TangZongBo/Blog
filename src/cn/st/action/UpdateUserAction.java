package cn.st.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.stream.buffer.sax.SAXBufferProcessor;

import cn.st.entity.User;
import cn.st.service.UserService;

/*
 * 更新信息
 */
public class UpdateUserAction extends ActionSupport{
	
	    private UserService userService;
	    
	    private String username;
	    
	    private String password;
	    
	    private String name;//原来的username
	    
	    private String pwd;//原来的password
	    
		public String getPwd() {
			return pwd;
		}

		public void setPwd(String pwd) {
			this.pwd = pwd;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public void setUserService(UserService userService) {
			this.userService = userService;
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


		@Override
        public String execute() throws Exception {
			  ActionContext.getContext().put("msg","");
			 if(name.equals(username)&&pwd.equals(password)) {
				 return SUCCESS;
			 }
	       
			 if(userService.select(username)&&(!username.equals(name))){
				  ActionContext.getContext().put("msg","用户名已经存在!");
				  return NONE;
			 }
			 
			 int id=userService.findId(name);
			 
			 if(!username.equals(name)&&username.length()>0) {
				 userService.update1(id, username);
			 }
			 
			 if(!password.equals(pwd)&&password.length()>0) {
				 userService.update2(id, password);
			 }
			 
			 User user=userService.getUser();
			 
			 System.out.println("ok:"+user);
			 
			 ActionContext.getContext().getSession().put("user",user);
			 
        	 return SUCCESS;
        }
}
