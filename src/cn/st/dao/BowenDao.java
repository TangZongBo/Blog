package cn.st.dao;

import java.util.List;

import cn.st.entity.Bowen;

public interface BowenDao {

	      public List<Bowen> findlistBowen();//查询所有博客并按照时间从大到小排列
	      
          public Bowen SelectBowen(int bid);//查询该博客对应id的所有信息
          
          public void addBowen(Bowen bowen);//添加新的博客
          
          public void UpdateBowen(int bid,String hidden1,String hidden2,String text);//根据bid修改该博客信息

		   public Bowen getBowen();//获取当前的博客对象
		   
		   public void DeleteBowen(int bid);//根据bid删除博客
}
