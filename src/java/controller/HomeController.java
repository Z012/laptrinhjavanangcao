package controller;


import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import modelDAO.*;
import model.*;
/**
 *
 * @author mk
 */
@Controller
@RequestMapping(value="/home")
public class HomeController {
    
    @RequestMapping(method=RequestMethod.GET)
    public String home(ModelMap model){
        int soluong = 7;
        List<Post> dsBaiViet = postsDAO.ListNumber(soluong);
        model.put("dsBaiViet", dsBaiViet);
        
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
    
//    @RequestMapping(value="/contact/message", method = RequestMethod.POST)
//    public String message()
    
    @RequestMapping(value="/tags", method=RequestMethod.GET)
    public String tag(ModelMap modelmap){
        List<Tags> dsTags = tagsDAO.ListAll();
        List<Post> dsBaiViet = postsDAO.ListNumber(10);
//        modelmap.put("chude", "Chu de bai viet");
        modelmap.put("dsBaiViet", dsBaiViet);
        modelmap.put("dsTags", dsTags);
        return "fontend/tags";
    }
    
    @RequestMapping(value="/search", method = RequestMethod.POST)
    public String search(@RequestParam(value="search") String str, ModelMap modelMap) {
        List<Tags> dsTags = tagsDAO.ListAll();
        List<Post> dsBaiViet = postsDAO.SearchTitle(str);
//        modelmap.put("chude", "Chu de bai viet");
        modelMap.put("dsBaiViet", dsBaiViet);
        modelMap.put("dsTags", dsTags);
        return "fontend/search";
        
    }
    
    
}
