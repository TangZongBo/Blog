package cn.st.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.service.BowenService;

public class DeleteBowenAction extends ActionSupport{
	
	           private BowenService bowenService;
      
             public BowenService getBowenService() {
				return bowenService;
			}
			public void setBowenService(BowenService bowenService) {
				this.bowenService = bowenService;
			}
			@Override
            public String execute() throws Exception {
				
				int bid=Integer.valueOf(ServletActionContext.getRequest().getParameter("bid"));
				bowenService.DeleteBowen(bid);
				ActionContext.getContext().getSession().put("listbowen", null);
            	 
            	
            	return SUCCESS;
            }
}
