package controller;

/**
 *
 * @author mk
 */
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/messages")
public class MessageController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap){
        
        return "backend/messages";
    }
}
