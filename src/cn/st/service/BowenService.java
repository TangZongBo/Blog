package cn.st.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.st.dao.BowenDao;
import cn.st.entity.Bowen;

@Transactional
public class BowenService {

	     private BowenDao bowenDao;

		public void setBowenDao(BowenDao bowenDao) {
			this.bowenDao = bowenDao;
		}
		
		public List<Bowen> findlistBowen(){//调用dao类方法查询数据库中所有的bowen对象
			  return bowenDao.findlistBowen();
		}
		
	     public Bowen SelectBowen(int bid) {//调用dao类方法使用id查询对应博客对象
	    	 return bowenDao.SelectBowen(bid);
	     }
	     
	     public void addBowen(Bowen bowen) {//调用dao类方法添加博客内容
	    	   bowenDao.addBowen(bowen);
	     }

	      public void UpdateBowen(int bid,String hidden1,String hidden2,String text) {//调用dao类方法修改博客内容
	    	    bowenDao.UpdateBowen(bid,hidden1,hidden2,text);
	      }
		
	      public Bowen getBowen() {//获取新的bowen对象
	    	  return bowenDao.getBowen();
	      }

	       public void DeleteBowen(int bid) {//根据id删除博客
	    	   bowenDao.DeleteBowen(bid);
	       }
	
	     
}
