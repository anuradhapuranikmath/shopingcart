package com.musichub.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.musichub.Dao.ProductDetailsDao;
import com.musichub.model.ProductDetails;
import com.musichub.model.Register;
import com.musichub.service.Serviceclass;

@Controller
public class IndexController {
	ProductDetailsDao dao=new ProductDetailsDao();// for hard code data fecthing
	
	 @Autowired	
	 private Serviceclass productobj;
	@RequestMapping("/")
	public String getIndex()
	{
		return "index";
	}
	

	@RequestMapping("/about")
	public String getabout()
	{
		return "aboutus";
	}
	

	@RequestMapping("/product")
	public String getproduct()
	{
		return "product";
	}
	

	/*@RequestMapping("/login")
	public String getlogin()
	{
		return "login";
	}
	*/
	
	
	

	@RequestMapping("/register")
	public String getregister()
	{
		return "register";
	}
	

	@RequestMapping("/contact")
	public String getcontact()
	{
		return "contact";
	}
	
	@RequestMapping("/index")
	public String gethome()
	{
		return "index";
	}
	
	@RequestMapping("/addproduct")
	public String getaddproduct()
	{
		return "addproduct";
	}
	
	
	
	@RequestMapping("/edit")
	public String edit()
	{
		return "edit";
	}
	
	
	 @RequestMapping("/angularpagedetails1")
     public  ModelAndView  piano()
     {
		 ModelAndView mv=new ModelAndView("angularpagedetails");
		  			  
         return mv;
     }
	
	             @RequestMapping("/angular")
				  public @ResponseBody String info(ModelMap mm)
				  {
					  //System.out.println("hi");
					//  List<ProductDetails> prodetails= (List<ProductDetails>)dao.getDetails(); used while retriewing from hard coded data in DAO class
	            	 List<ProductDetails> prodetails= (List<ProductDetails>)productobj.getAll(); 
					  System.out.println(prodetails.toString());
					  Gson g=new Gson();
					  String var=g.toJson(prodetails);
					 // System.out.println(var);
	     			  return var;
	
				  }	  
		 
			  /*
	            @RequestMapping(value="/addtocart",method=RequestMethod.GET)
	         	public ModelAndView getaddtocart(@RequestParam int id)
	         	{
	            	
	            	ProductDetails p=productobj.getinfo(id);
	            	if(p!=null)
	            	{
	            		return new ModelAndView("addtocart","data",p);
	            	}
	            
	            	else
	            	{
	            		return new ModelAndView("error","",null);
	            	}
	         	}*/
	         	  
	             
			 @RequestMapping(value="/signsuccess",method=RequestMethod.POST)// insertion using spring form
			 public String doregister(@ModelAttribute("user")Register reg)
			 {
				 System.out.println(reg.getFirstName());
				 productobj.insert(reg);
				 return "signsuccess";
			 }
			 @RequestMapping(value="/add",method=RequestMethod.POST)
			 public String add(@ModelAttribute ("pro")ProductDetails me)
			 {
				 System.out.println(me.getProductId());
				 System.out.println(me.getManufacturer());
				 System.out.println(me.getProductName());
				 System.out.println(me.getProductprice());

				 productobj.insertrow(me);
				 return "signsuccess";
			 }
			 
			 
			 @RequestMapping(value="/edit",method=RequestMethod.POST)
			 public String update(@ModelAttribute ("up")ProductDetails me)
			 {
				 System.out.println(me.getProductId());
				 System.out.println(me.getManufacturer());
				 System.out.println(me.getProductName());
				 System.out.println(me.getProductprice());

				 productobj.updateRow(me);
				 return "signsuccess";
			 }
			 
			 
			 
			 @ModelAttribute("user")//insertion to DB
			 public Register user()
			 {
				 return new Register();
			 }
			 
			 @ModelAttribute("pro")

				 public ProductDetails product()
				 {
					return new ProductDetails(); 
				 }
			 @ModelAttribute("up")
			 public ProductDetails updates()
			 {
				 return new ProductDetails();
			 }
			 
			 
			 
			@RequestMapping("delete")
			
			public ModelAndView deleteUser(@RequestParam int id)
			{
				productobj.deleteRow(id);
				return new ModelAndView("admin");
			}
			
			
			@RequestMapping("/success")
			public ModelAndView addproduct(@ModelAttribute ProductDetails me)
			{
				System.out.println("in controller");
				productobj.insertrow(me);
				return new ModelAndView("angularpagedetails");
			}
			

@RequestMapping("/login")
   public String login(@RequestParam (value="error", required = false) String error,
                       @RequestParam (value="logout", required = false) String logout, Model model
                       ) {

       if(error != null) {
           model.addAttribute("error", "Invalid username and password!");
       }

       if(logout!= null) {
           model.addAttribute("msg", "You have been logged out successfully.");
       }

       return "login";
   }
			
	 	 
}
