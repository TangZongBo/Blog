package cn.st.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.service.BowenService;

/*
 * 删除博客
 */
public class DeleteBowenAction extends ActionSupport{
	
	           private BowenService bowenService;//bowenService实例已经在bowen.xml中注入 是spring框架中的内容 可以不用new 但要对应生成set方法
      
             public BowenService getBowenService() {
				return bowenService;
			}
			public void setBowenService(BowenService bowenService) {
				this.bowenService = bowenService;
			}
			@Override
            public String execute() throws Exception {
				
				int bid=Integer.valueOf(ServletActionContext.getRequest().getParameter("bid"));//对应数据表bowen的字段bid 其实就是获取当前博客的id
				
				bowenService.DeleteBowen(bid);//根据博客id删除博客 
				
				ActionContext.getContext().getSession().put("listbowen", null);//把列表设置成null,删除博客跳转到首页,让首页进行重新查询
            	 
            	
            	return SUCCESS;
            }
}
