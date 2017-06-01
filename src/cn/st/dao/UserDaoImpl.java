package cn.st.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;

import cn.st.entity.User;

public class UserDaoImpl implements UserDao {


	private HibernateTemplate hibernateTemplate;
	
	public User user=new User();

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	

	@Override
	public void add(User user) {//像数据库中添加新用户信息
		    hibernateTemplate.save(user);
          
	}
	
	public void update1(int id,String username) {
		 SessionFactory sessionFactory=hibernateTemplate.getSessionFactory();
		 Session session=sessionFactory.openSession();
		 
		 Transaction tx=session.beginTransaction();
		 
		 User user=session.get(User.class,id);
		
		  user.setUsername(username);
		  
		  tx.commit();
		  
		  this.user.setUsername(username);
		
	}
	
	public void update2(int id,String password) {
		SessionFactory sessionFactory=hibernateTemplate.getSessionFactory();
		 Session session=sessionFactory.openSession();
		 
		 Transaction tx=session.beginTransaction();
		 
		 User user=session.get(User.class,id);
		
		  
		  user.setPassword(password);
		  tx.commit();
		  
		  this.user.setPassword(password);

	}


	@Override
	public boolean select(String username) {//判断用户名是否已经用了
		
		 SessionFactory sessionFactory=hibernateTemplate.getSessionFactory();
		 Session session=sessionFactory.openSession();
		 
		 Query query=session.createQuery("from User u where u.username = ?");//hql查询语句
		 
		 query.setParameter(0,username);
		 
		 List<User> list=query.list();
		 
		 System.out.println(list);
		 
		 if(list.isEmpty()) {
			 return false;//不存在
		 }
		 
		return true;//存在
	}

	@Override
	public String select(String username, String password) {
		
		SessionFactory sessionFactory=hibernateTemplate.getSessionFactory();
		 Session session=sessionFactory.openSession();
		 
		 Query query=session.createQuery("from User u where u.username = ?");//hql查询语句
		 
		 query.setParameter(0,username);
		 
		 List<User> list=query.list();
		 
		 if(list.isEmpty()) {
			 return "用户并不存在!";
		 }
		 
		 if(!list.get(0).getPassword().equals(password)) {
			    return "密码错误";
		 }
		 
		 user.setUsername(list.get(0).getUsername());
		 user.setPassword(list.get(0).getPassword());
		 user.setSex(list.get(0).getSex());

		 return "登录成功";	
		
	}



	@Override
	public User getUser() {
		return user;
	}



	@Override
	public int findId(String username) {
		 SessionFactory sessionFactory=hibernateTemplate.getSessionFactory();
		 
		 Session session=sessionFactory.openSession();
		 
		 Query query=session.createQuery("from User u where u.username = ?");//hql查询语句
		 
		 query.setParameter(0,username);
		 
		 List<User> list=query.list();
		 
		return list.get(0).getUid();
	}


	

	
            
}
