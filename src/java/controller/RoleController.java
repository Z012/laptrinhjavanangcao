package controller;

/**
 *
 * @author mk
 */
import model.Role;
import modelDAO.rolesDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/roles")
public class RoleController {

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap) {
        modelmap.addAttribute("lsRole", rolesDAO.ListAll());
        return "backend/roles";
    }

    @RequestMapping(value = "/addrole", method = RequestMethod.GET)
    public String addRole() {
        return "backend/addrole";
    }

    @RequestMapping(value = "/store", method = RequestMethod.POST)
    public String storeRole(@RequestParam(value = "name", required = true) String name, @RequestParam(value = "description", required = true) String description) {
        rolesDAO.AddRole(name, description);
        return "redirect:/roles.html";
    }

    @RequestMapping(value = "/{id}/edit-role", method = RequestMethod.GET)
    public String editRole(@PathVariable(value = "id") int id, ModelMap modelMap) {
        Role role = rolesDAO.ViewDetail(id);
        modelMap.put("role", role);
        return "backend/editrole";
    }

    @RequestMapping(value = "/{id}/update-role", method = RequestMethod.POST)
    public String updateRole(@PathVariable(value = "id") int id,
            @RequestParam(value = "name", required = true) String name,
            @RequestParam(value = "description", required = true) String description,
            ModelMap modelMap) {
        boolean updateRole = rolesDAO.UpdateRole(id, name, description);
        if (updateRole) {
            modelMap.addAttribute("thongbao", "Cap nhat thanh cong");
        } else {
            modelMap.addAttribute("Loi", "Cap nhat that bai");
        }
        return "redirect:/roles.html";
    }

    @RequestMapping(value = "/search-roles", method = RequestMethod.POST)
    public String searchRole(@RequestParam(value = "name") String name, ModelMap modelMap) {
        if (name != null) {
            modelMap.put("lsRole", rolesDAO.SearchRole(name));
            modelMap.put("name", name);
            return "backend/searchroles";
        } else {
            return "redirect:/roles.html";
        }
    }

    @RequestMapping(value = "/{id}/delete-role", method = {RequestMethod.GET, RequestMethod.POST})
    public String deleteRole(@PathVariable(value = "id") int id, ModelMap modelMap) {
        boolean delRole = rolesDAO.DeleteRole(id);
        if (delRole) {
            modelMap.put("thongbao", "Xoa thanh cong");
        } else {
            modelMap.put("loi", "Xoa that bai");
        }
        return "redirect:/roles.html";
    }

}
