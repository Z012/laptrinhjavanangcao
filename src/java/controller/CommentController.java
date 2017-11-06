package controller;

/**
 *
 * @author mk
 */

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/comments")
public class CommentController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(){
        
        return "backend/comments";
    }
}
