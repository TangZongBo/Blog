package cn.st.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/*
 * 退出
 */
public class ExitAction extends ActionSupport{
              @Override
            public String execute() throws Exception {
            	  ActionContext.getContext().getSession().put("page",1);//把页数page设置为1
            	 ActionContext.getContext().getSession().put("user",null);//因为推出所以存储在session中的user设置为空
            	 return SUCCESS;//成功去首页
            }
} 
