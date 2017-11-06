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
@RequestMapping(value="/users")
public class UserController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap){
        
        return "backend/users";
    }
    
    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String login(ModelMap modelmap){
        return "backend/login";
    }
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logout(ModelMap modelMap, HttpServletRequest request) {
        return "redirect:/login.html";
    }
    
    
}
