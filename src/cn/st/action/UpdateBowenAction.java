package cn.st.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.entity.Bowen;
import cn.st.entity.User;
import cn.st.service.BowenService;

public class UpdateBowenAction extends ActionSupport {
	
				private String hidden1;
			    
			    private String hidden2;
			    
			    private String hidden3;
			    
			   private BowenService bowenService;
			   
			          
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

			public BowenService getBowenService() {
				return bowenService;
			}

			public void setBowenService(BowenService bowenService) {
				this.bowenService = bowenService;
			}

			@Override
	        public String execute() throws Exception {
				
				System.out.println("code:"+hidden3);
              
	        	Bowen oldbowen=(Bowen) ActionContext.getContext().getSession().get("bowen");
	        	
	        	bowenService.UpdateBowen(oldbowen.getBid(),hidden1,hidden2,hidden3);
	        	
	        	Bowen newbowen=bowenService.getBowen();
	        	
	        	User user=(User) ActionContext.getContext().getSession().get("user");
	        	
	        	newbowen.setUser(user);
	        	
	        	ActionContext.getContext().getSession().put("bowen",newbowen);
	        	
	    		ActionContext.getContext().getSession().put("listbowen", null);
	        	
	        	 return SUCCESS;
	        }
}
