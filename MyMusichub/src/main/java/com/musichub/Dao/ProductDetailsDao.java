package com.musichub.Dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.musichub.model.ProductDetails;
import com.musichub.model.Register;
@Repository
public class ProductDetailsDao {
	List<ProductDetails> productDao=new ArrayList<ProductDetails>();
	@Autowired
	private SessionFactory sessionFactory ;
	public List<ProductDetails> getDetails()
	{
	
		// connecting to database using hibernate.
		System.out.println("in dao");
		Session s=sessionFactory.getCurrentSession();
		Criteria c=s.createCriteria(ProductDetails.class);

		//org.hibernate.Query q=s.createQuery("from ProductDetails");
		List<ProductDetails> q=c.list();
		//productDao=q.list();
		
		// hard coded data without database
		/*ProductDetails product1=new ProductDetails(001, "guitar", 1000, "greece co in");
		
		ProductDetails product2=new ProductDetails(002, "piano",2000, "france company");
		productDao.add(product1);
		productDao.add(product2);*/
		
		return q;
	}
	public void insertto(Register reg) {
		
		Session ss=sessionFactory.openSession();
		ss.save(reg);
		ss.flush();
	}	
		public ProductDetails get(int id)
		{
			return(ProductDetails) sessionFactory.getCurrentSession().get(ProductDetails.class, id);
		    }
		
		public void updaterow(ProductDetails me)
		{
			Session session = sessionFactory.openSession();
	    	   session.update(me);
	    	   session.flush();
	 	       session.close();  
	    	  
		}
		
		public void deleteProduct(int id)
		{
			Session session = sessionFactory.getCurrentSession();
	        ProductDetails p = (ProductDetails) session.get(ProductDetails.class, new Integer(id));
	        if(null != p)
	        {
	            session.delete(p);       
	        }
		}
		
		public void insertRow(ProductDetails me)
		{
			System.out.println("in dao");
			Session session = sessionFactory.openSession();
	    	
	    	  session.save(me);
	    	  session.flush();
	    	  session.close();
	    	  
		}
		
	}
	

