package cn.st.action;

import com.opensymphony.xwork2.ActionSupport;

public class WriterAction extends ActionSupport{
	
	          private String hidden;


			public String getHidden() {
				return hidden;
			}

			public void setHidden(String hidden) {
				this.hidden = hidden;
			}

			@Override
            public String execute() throws Exception {
            	System.out.println(hidden);
            	return NONE;
            }
}
