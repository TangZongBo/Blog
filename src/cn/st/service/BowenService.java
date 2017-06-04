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
		
		public List<Bowen> findlistBowen(){
			  return bowenDao.findlistBowen();
		}
		
	     public Bowen SelectBowen(int bid) {
	    	 return bowenDao.SelectBowen(bid);
	     }
	     
	     public void addBowen(Bowen bowen) {
	    	   bowenDao.addBowen(bowen);
	     }

	      public void UpdateBowen(int bid,String hidden1,String hidden2,String text) {
	    	    bowenDao.UpdateBowen(bid,hidden1,hidden2,text);
	      }
		
	      public Bowen getBowen() {
	    	  return bowenDao.getBowen();
	      }

	
	     
}
