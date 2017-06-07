package cn.st.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.entity.Bowen;
import cn.st.entity.User;
import cn.st.service.BowenService;

/*
 * 更新博客信息
 */
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
				
				System.out.println("code:"+hidden3);//又从隐藏域中获取,麻烦...
              
	        	Bowen oldbowen=(Bowen) ActionContext.getContext().getSession().get("bowen");//获取session域中当前的博客信息
	        	
	        	bowenService.UpdateBowen(oldbowen.getBid(),hidden1,hidden2,hidden3);//调用逻辑类中方法来更新数据库中博客信息
	        	
	        	Bowen newbowen=bowenService.getBowen();//获取新的数据库中的博客信息
	        	
	        	User user=(User) ActionContext.getContext().getSession().get("user");//获取当前session域中的user信息
	        	
	        	newbowen.setUser(user);//设置新的博客的user为当前user(其实就是设置作者,毕竟作者和博文的关系是一对多)
	        	
	        	ActionContext.getContext().getSession().put("bowen",newbowen);//更新session域中的博客信息
	        	
	    		ActionContext.getContext().getSession().put("listbowen", null);//因为数据库变动,设置listbowen中为null,免得到时候用户点击首页重新显示出问题
	        	
	        	 return SUCCESS;
	        }
}
