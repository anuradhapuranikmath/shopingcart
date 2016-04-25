package com.musichub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musichub.Dao.ProductDetailsDao;
import com.musichub.model.ProductDetails;
import com.musichub.model.Register;

@Service
@Transactional
public class Serviceclass {

 
	 @Autowired
	 private ProductDetailsDao s;
    
    public List<ProductDetails> getAll(){
    	return s.getDetails();
    	
    	
    }
    public ProductDetails getinfo(int id)
    {
    	return s.get(id);
    }

	public void insert(Register reg) {
	System.out.println(" in service");
	s.insertto(reg);
	}
	
	 public void updateRow(ProductDetails me) {  
		   s.updaterow(me); 
		 }  
	 

	 public int deleteRow(int id) {  
	  return s.deleteRow(id);  
	 } 
	 
	 public void insertrow(ProductDetails me)
	 {
		 System.out.println(" in service");
		 s.insertRow(me);
	 }
	 
	 
}
		
	

