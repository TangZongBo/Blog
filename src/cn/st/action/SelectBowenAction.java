package cn.st.action;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.entity.Bowen;
import cn.st.service.BowenService;

/*
 * 查询当前点击的对应博客
 */
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
               int bid=Integer.valueOf(ServletActionContext.getRequest().getParameter("bid"));//获取当前博客id
              Bowen bowen=bowenService.SelectBowen(bid);//根据当前点击的博客id来查询博客的信息
                ActionContext.getContext().getSession().put("bowen",bowen);//把当前博客信息存储到session中
            	return SUCCESS;
            }
}
