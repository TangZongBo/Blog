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
	     
	     
}
