package cn.st.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.stream.buffer.sax.SAXBufferProcessor;

import cn.st.entity.User;
import cn.st.service.UserService;

/*
 * 更新用户信息
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
			
			 if(name.equals(username)&&pwd.equals(password)) {//如果用户名和密码压根没改变就直接跳转
				 return SUCCESS;
			 }
	       
			 if(userService.select(username)&&(!username.equals(name))){//首页满足设置的用户名和旧用户名不一致,然后在查询数据库中是否存在设置的用户名
				  ActionContext.getContext().put("msg","用户名已经存在!");//存在就设置msg为用户已经存在,跳回页面去显示
				  return NONE;
			 }
			 
			 //新用户名与旧用户名不一致,并且数据库不存在新用户名
			 int id=userService.findId(name);//根据旧用户名查询要修改的用户名id
			 
			 if(!username.equals(name)&&username.length()>0) {//新用户名与旧用户名不一致,并且新用户名长度大于0
				 userService.update1(id, username);//调用根据id修改数据库中的用户名
			 }
			 
			 if(!password.equals(pwd)&&password.length()>0) {//新密码与旧密码不一致,并且新密码长度大于0
				 userService.update2(id, password);//调用根据id修改数据库中的密码
			 }
			 
			 User user=userService.getUser();//从逻辑类中获取新user类
			 
			 ActionContext.getContext().getSession().put("user",user);//更新session域中的user信息为新user信息
			 
        	 return SUCCESS;
        }
}
