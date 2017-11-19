package controller;

/**
 *
 * @author mk
 */

import model.Post;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;

import modelDAO.postsDAO;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/posts")
public class PostController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap){
        modelmap.put("lsPost", postsDAO.ListAll());
        return "backend/posts";
    }
    
    @RequestMapping(value="/{id}/single", method=RequestMethod.GET)
    public String viewDetail(@PathVariable("id") int id, ModelMap modelmap){
        modelmap.addAttribute("baiviet", postsDAO.ViewDetail(id));
        
        return "fontend/single";
    }
    
    @RequestMapping(value="/addpost", method = RequestMethod.GET)
    public String addPost()
    {
        return "backend/addpost";
    }
    
    @RequestMapping(value = "/store", method = RequestMethod.POST)
    public String storePost(@RequestParam(value = "title", required = true) String title, 
                @RequestParam(value = "description", required = true) String description, 
                @RequestParam(value = "content", required = true) String content) {
        Post ps = new Post();
        ps.setTitle(title);
        ps.setContent(content);
        ps.setDescription(description);
        postsDAO.AddPost(ps);
        return "redirect:/posts.html";
    }
}
