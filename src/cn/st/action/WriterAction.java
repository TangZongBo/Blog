package cn.st.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.entity.Bowen;
import cn.st.entity.User;
import cn.st.service.BowenService;

/*
 * 修改博客Action
 */
public class WriterAction extends ActionSupport{
	
	         private String hidden1;
	         
	         private String hidden2;
	         
	         private String hidden3;
	         
	        private BowenService bowenService;
	        
	        private Bowen bowen;
	        
			public BowenService getBowenService() {
				return bowenService;
			}

			public void setBowenService(BowenService bowenService) {
				this.bowenService = bowenService;
			}

			public Bowen getBowen() {
				return bowen;
			}

			public void setBowen(Bowen bowen) {
				this.bowen = bowen;
			}
			
			public String getHidden1() {
				return hidden1;
			}

			public void setHidden1(String hidden1) {
				this.hidden1 = hidden1;
			}

			public String getHidden2() {
				return hidden2;
			}

			public void setHidden2(String hidden2) {
				this.hidden2 = hidden2;
			}
	
			public String getHidden3() {
				return hidden3;
			}

			public void setHidden3(String hidden3) {
				this.hidden3 = hidden3;
			}

			@Override
            public String execute() throws Exception {
				
				System.out.println("hidden3:"+hidden3);//前端写的有点复杂 从隐藏域中获取...
               
				User user=(User) ActionContext.getContext().getSession().get("user");//获取当前session域中的用户
				
				bowen.setAutherid(user.getUid());//设置文章的作者的id
				bowen.setCode(hidden3);//更新文章html代码
				bowen.setName(hidden1);//更新文章标题
				bowen.setContent(hidden2);//设置文章原字符串
				bowen.setTime(new Date());//更新最近修改时间
				bowen.setUser(user);//设置文章对应的用户
				
				bowenService.addBowen(bowen);//在数据库中添加博客
            	
				ActionContext.getContext().getSession().put("bowen",bowen);//设置session域中的博客为当前的等会显示
				ActionContext.getContext().getSession().put("listbowen", null);//设置listbowen为null
				
            	return SUCCESS;
            }
}
