package cn.st.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ExitAction extends ActionSupport{
              @Override
            public String execute() throws Exception {
            	  System.out.println(ActionContext.getContext().getSession().get("user"));
            	 ActionContext.getContext().getSession().put("user",null);
            	 return SUCCESS;
            }
} 
