package controller;

/**
 *
 * @author mk
 */

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import modelDAO.postsDAO;

@Controller
@RequestMapping(value="/posts")
public class PostController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap){
        modelmap.put("lsPost", postsDAO.ListAll());
        return "backend/posts";
    }
    
    
    
    
}
