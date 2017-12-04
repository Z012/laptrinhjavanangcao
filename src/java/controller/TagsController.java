package controller;

/**
 *
 * @author mk
 */

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.*;
import modelDAO.*;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping(value="/tags")
public class TagsController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap model){
        List<Tags> dsTags = tagsDAO.ListAll();
        model.put("dsTags", dsTags);
        return "backend/tags";
    }
    
    @RequestMapping(value = "/addtag", method = RequestMethod.GET)
    public String addTag()
    {
        return "backend/addtag";
    }
    
    @RequestMapping(value = "/store", method = RequestMethod.POST)
    public String storeTag(@RequestParam(value = "title", required = true) String title)
    {
        tagsDAO.AddTag(title);
        return "redirect:/tags.html";
    }
    
    @RequestMapping(value = "/{id}/delete-tags", method = {RequestMethod.GET,RequestMethod.POST})
    public String deleteTag(@PathVariable(value = "id") int id, ModelMap modelMap){
        //int id = Integer.parseInt(request.getParameter("id"));
        boolean delTag = tagsDAO.DeleteTag(id);
        if (delTag == true)
            modelMap.put("thongbao", "Xoa thanh cong");
        else 
            modelMap.put("loi", "Xoa that bai");
        return "redirect:/tags.html";
    }
}
