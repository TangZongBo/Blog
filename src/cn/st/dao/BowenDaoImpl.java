package cn.st.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.junit.validator.PublicClassValidator;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.sun.org.apache.xml.internal.utils.ListingErrorHandler;

import cn.st.entity.Bowen;
import cn.st.entity.User;

public class BowenDaoImpl implements BowenDao{
	
          private HibernateTemplate hibernateTemplate;
          
          public Bowen bowen;

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
		    	if(bowen.getContent().length()<50) {
		    		bowen.setContext(bowen.getContent()+"...");
		    	}else {
		    	bowen.setContext(bowen.getContent().substring(0,50)+"...");
		    	}
		    }
			return list;
		}

		@Override
		public Bowen SelectBowen(int bid) {
			
			SessionFactory sessionFactory=hibernateTemplate.getSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Query query=session.createQuery("from Bowen WHERE bid = ?");
			
			query.setParameter(0,bid);
			
			List<Bowen> list=query.list();
			
			User user=session.get(User.class,list.get(0).getAutherid());
			
			list.get(0).setUser(user);
			
			return list.get(0);
		}

		@Override
		public void addBowen(Bowen bowen) {
			  hibernateTemplate.getSessionFactory().openSession().beginTransaction();//开启事务
			  hibernateTemplate.save(bowen);					
		}

		@Override
		public void UpdateBowen(int bid,String hidden1,String hidden2,String text) {
			Session session=hibernateTemplate.getSessionFactory().openSession();
			
			Transaction tx=session.beginTransaction();
			
			Bowen bowen=session.get(Bowen.class,bid);
			
			bowen.setName(hidden1);
			bowen.setContent(hidden2);
			bowen.setCode(text);
			bowen.setTime(new Date());
			
			tx.commit();
			
			this.bowen=bowen;
			
		}

		@Override
		public Bowen getBowen() {
		
			return this.bowen;
		}

		@Override
		public void DeleteBowen(int bid) {
			
			 Session session=hibernateTemplate.getSessionFactory().openSession();
			 
			 Transaction tx=session.beginTransaction();
			 
			 String hql="Delete from Bowen where bid = ?";
			 
			 Query query=session.createQuery(hql);
			 
			 query.setParameter(0,bid);
			 
			 query.executeUpdate();
			 
			 tx.commit();
					
			
		}
		

		
          
          
          
}
