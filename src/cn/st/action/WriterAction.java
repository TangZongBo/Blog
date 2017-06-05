package cn.st.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.entity.Bowen;
import cn.st.entity.User;
import cn.st.service.BowenService;

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
               System.out.println("hidden3:"+hidden3);
               
				User user=(User) ActionContext.getContext().getSession().get("user");
				bowen.setAutherid(user.getUid());
				bowen.setCode(hidden3);
				bowen.setName(hidden1);
				bowen.setContent(hidden2);
				bowen.setTime(new Date());
				bowen.setUser(user);
				
				bowenService.addBowen(bowen);
            	
				ActionContext.getContext().getSession().put("bowen",bowen);
				ActionContext.getContext().getSession().put("listbowen", null);
				
            	return SUCCESS;
            }
}
