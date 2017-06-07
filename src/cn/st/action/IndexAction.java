package cn.st.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.st.entity.Bowen;
import cn.st.entity.User;
import cn.st.service.BowenService;

/*
 * 主页查询页面
 */
public class IndexAction extends ActionSupport{
            
	
	private BowenService bowenService;
	

	public void setBowenService(BowenService bowenService) {
		this.bowenService = bowenService;
	}

	@Override
	public String execute() throws Exception {
		
		List<Bowen> listbowen=bowenService.findlistBowen();//查询数据库中有的博客
		ActionContext.getContext().getSession().put("listbowen",listbowen);//把所有博客存储进session
		ActionContext.getContext().getSession().put("length",listbowen.size());//存储在session中有多少篇博客,等会去主页好遍历
		ActionContext.getContext().getSession().put("page",1);//指定为第一页
		return SUCCESS;
	}
}
