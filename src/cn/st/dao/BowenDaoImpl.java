package cn.st.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;

import cn.st.entity.Bowen;
import cn.st.entity.User;

public class BowenDaoImpl implements BowenDao{
	
          private HibernateTemplate hibernateTemplate;

		public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
			this.hibernateTemplate = hibernateTemplate;
		}

		@Override
		public List<Bowen> findlistBowen() {
			SessionFactory sessionFactory=hibernateTemplate.getSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Query query=session.createQuery("from Bowen order by time desc");
			
			List<Bowen> list=query.list();
			
		    for(Bowen bowen:list) {
		    	
		    	Query query2=session.createQuery("from User WHERE uid = ?");
		    	query2.setParameter(0,bowen.getAutherid());
		    	List<User> listuser=query2.list();
		    	User user=listuser.get(0);
		    	bowen.setUser(user);
		    	bowen.setContext(bowen.getContent().substring(0,200)+"...");
		    }
			return list;
		}

		
          
          
          
}
