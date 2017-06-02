package cn.st.action;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class SelectBowenAction extends ActionSupport{
	
              @Override
            public String execute() throws Exception {
               String bid=ServletActionContext.getRequest().getParameter("bid");
               System.out.println(bid);
            	return NONE;
            }
}
