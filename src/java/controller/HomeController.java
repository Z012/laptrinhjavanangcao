package controller;


import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import modelDAO.postsDAO;
import model.Post;
/**
 *
 * @author mk
 */
@Controller
@RequestMapping(value="/home")
public class HomeController {
    
    @RequestMapping(method=RequestMethod.GET)
    public String home(Model model){
        return "fontend/home";
    }
    
    @RequestMapping(value="/about",method=RequestMethod.GET)
    public String about(Model model){
        return "fontend/about";
    }
    
    @RequestMapping(value="/contact", method=RequestMethod.GET)
    public String contact(Model model){
        return "fontend/contact";
    }
    
    @RequestMapping(value="/tags", method=RequestMethod.GET)
    public String contact(ModelMap modelmap){
        //List<Tags>
        
        return "fontend/tags";
    }
    
    
}
