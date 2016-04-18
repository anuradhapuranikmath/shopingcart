package Mymusicshop;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

	@Controller
	public class IndexController   {
		@RequestMapping("/")
		public ModelAndView showMessage()
		{
	
			ModelAndView mv = new ModelAndView("index");
			return mv;
		}
			  @RequestMapping("/home")
              public String homes()
              {
                  return "home";
              }
			  @RequestMapping("/about")
              public String Aboutus()
              {
                  return "about";
              }
		
			  
			  @RequestMapping("/contact")
              public String contactus()
              {
                  return "contact";
              }
			  
			  @RequestMapping("/register")
              public String resgister()
              {
                  return "register";
              }
			  
			  @RequestMapping("/login")
              public String login()
              {
                  return "login";
              }
			  
			  
	}


