package controller;

/**
 *
 * @author mk
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.*;
import modelDAO.*;

@Controller
@RequestMapping(value="/messages")
public class MessageController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap){
        
        return "backend/messages";
    }
    
    @RequestMapping(value = "/store-message" , method = {RequestMethod.GET, RequestMethod.POST})
    public String store(@RequestParam(value = "Username") String username,
        @RequestParam(value = "Email") String email,
        @RequestParam(value = "Content") String content){
        if (messagesDAO.SendMessage(username, email, content))
            return "redirect:/home/contact.html";
        return "redirect:/home.html";
    }
}
