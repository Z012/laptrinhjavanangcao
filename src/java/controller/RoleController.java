package controller;

/**
 *
 * @author mk
 */
import modelDAO.rolesDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/roles")
public class RoleController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap){
        modelmap.addAttribute("lsRole", rolesDAO.ListAll());
        return "backend/roles";
    }
    
    @RequestMapping(value = "/addrole", method = RequestMethod.GET)
    public String addRole()
    {
        return "backend/addrole";
    }
}
