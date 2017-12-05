package controller;

/**
 *
 * @author mk
 */
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.*;
import modelDAO.*;

@Controller
@RequestMapping(value="/comments")
public class CommentController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap){
        List<Comments> lsCm = commentsDAO.ListAll();
        modelmap.put("lsCm", lsCm);
        return "backend/comments";
    }
    
    @RequestMapping(value = "/selective-comments", method = RequestMethod.GET)
    public String selectiveComments() {
        commentsDAO.SelectiveComment();
        return "redirect:/comments.html";
    }
    
    @RequestMapping(value = "/search-comments", method = RequestMethod.POST)
    public String searchComment(@RequestParam(value = "search") String search, ModelMap modelmap) {
        List<Comments> lsCm = commentsDAO.SearchComment(search);
        if (lsCm == null)
            return "redirect:/comments";
        modelmap.put("lsCm", lsCm);
        modelmap.put("name", search);
        return "backend/searchcomments";
    }
    
    @RequestMapping(value = "/{idPost}/single", method = RequestMethod.POST)
    public String addComment(@PathVariable(value="idPost") int id, 
            @RequestParam(value="name") String name,
            @RequestParam(value="email") String email,
            @RequestParam(value="message") String message) {
        commentsDAO.AddComment(email, name, message, id);
        return "redirect:/posts/{idPost}/single.html";
    }
}
