package cn.st.action;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.entity.Bowen;
import cn.st.service.BowenService;

public class SelectBowenAction extends ActionSupport{
	
	     private BowenService bowenService;
  
        public void setBowenService(BowenService bowenService) {
			this.bowenService = bowenService;
		}


	    public BowenService getBowenService() {
			return bowenService;
		}

			@Override
            public String execute() throws Exception {
               int bid=Integer.valueOf(ServletActionContext.getRequest().getParameter("bid"));
              Bowen bowen=bowenService.SelectBowen(bid);
                ActionContext.getContext().getSession().put("bowen",bowen);
            	return SUCCESS;
            }
}
