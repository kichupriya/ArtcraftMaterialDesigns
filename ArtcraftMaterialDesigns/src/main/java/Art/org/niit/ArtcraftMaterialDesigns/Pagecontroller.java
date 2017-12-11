package Art.org.niit.ArtcraftMaterialDesigns;

import java.util.Locale.Category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class Pagecontroller {
  @Autowired
  private categoryDAO categoryDAO;
  
	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		
		//passing the list of categories
	    mv.addObject("categories", categoryDAO.list());
		
		mv.addObject("userClickhome",true);
		return mv;
	} 
	@RequestMapping(value ="/about")
	public String aboutUs(){
		return "about";
	}
		@RequestMapping(value ="/contact")
	public String contactUs(){
			return "contact";
	}
		/*
		 * methods to load all the products
		 * */ 
		@RequestMapping(value = "/show/all/products")
		public ModelAndView showAllproducts() {
			ModelAndView mv = new ModelAndView("page");
			mv.addObject("title", "Allproducts");
			
			//passing the list of categories
		     mv.addObject("categories", categoryDAO.list());
			
			 mv.addObject("userClickallproducts",true);
			return mv;
		} 
		@RequestMapping(value = "/show/category/products")
		public ModelAndView showCategoryproducts(@PathVariable("id")int id) {
			ModelAndView mv = new ModelAndView("page");
			//categoryDAO to fetch a single category
			Category category = null;
			
			category = categoryDAO.get(id);
			mv.addObject("category", categoryDAO.getName());
			
			//passing the list of categories
		    mv.addObject("categories", categoryDAO.list());
			
			mv.addObject("userClickCategoryproducts",true);
			return mv;
		} 
}