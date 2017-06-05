package cn.st.filterInterceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginFilterInterceptor extends MethodFilterInterceptor{

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		
		HttpServletRequest request=ServletActionContext.getRequest();
		
		Object obs=request.getSession().getAttribute("user");
		
		if(obs!=null) {
			return invocation.invoke();//放行
		}
		else {
			return "login";
		}
	}

}
