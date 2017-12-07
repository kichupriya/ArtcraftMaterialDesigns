package Art.org.niit.ArtcraftMaterialDesigns;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class Pagecontroller {

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome","true");
		return mv;
	} 
	@RequestMapping(value = "/about")
	public String aboutUs(){
		return "about";
	}
		@RequestMapping(value = "/contact")
	public String contactUs(){
			return "contact";
	}
}