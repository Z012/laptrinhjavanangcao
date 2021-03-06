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

import modelDAO.usersDAO;
import model.Users;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/users")
public class UserController {

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap) {
        modelmap.put("lsUser", usersDAO.ListAll());
        return "backend/users";
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup(ModelMap modelmap) {
        return "backend/signup";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam(value = "email", required = true) String email, @RequestParam(value = "pass", required = true) String pass, ModelMap modelMap, HttpServletRequest request) {
        boolean acc = usersDAO.Login(email, pass);
        if (acc) {
            int id = usersDAO.ResultId(email);
            Users user = usersDAO.ViewDetail(id);
            request.getSession().setAttribute("UsernameSession", user.getUsername());
            return "redirect:/admin/index.html";
        }
        return "backend/signup";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap modelMap, HttpServletRequest request) {
        request.getSession().setAttribute("UsernameSession", null);
        return "redirect:users/singup.html";
    }
    
    @RequestMapping(value = "/search-users", method = RequestMethod.POST)
    public String search(@RequestParam(value = "name") String name, ModelMap modelMap) {
        if (name != null) {
            modelMap.put("name", name);
            modelMap.put("lsUser", usersDAO.SearchUser(name));
            return "backend/searchusers";
        } else {
            return "redirect:/users.html";
        }
        
    }
}
