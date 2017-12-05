package controller;

/**
 *
 * @author mk
 */

import java.util.List;
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
    
    @RequestMapping(value = "/{id}/edit-tags", method = RequestMethod.GET)
    public String editTag(@PathVariable(value = "id") int id, ModelMap modelMap) {
        Tags tag = tagsDAO.ViewDetail(id);
        modelMap.put("tag", tag);
        return "backend/edittags";
    }
    
    @RequestMapping(value = "/{id}/update-tags", method = RequestMethod.POST)
    public String updateTag(@PathVariable(value = "id") int id, @RequestParam(value = "title", required = true) String title, ModelMap modelMap) {
        boolean updateName = tagsDAO.UpdateTagName(id, title);
        if (updateName)
            modelMap.addAttribute("thongbao", "Xoa thanh cong");
        else 
            modelMap.addAttribute("loi", "Xoa that bai");
        return "redirect:/tags.html";
    }
    
    @RequestMapping(value = "/search-tags", method=RequestMethod.POST)
    public String searchTag(@RequestParam(value = "name") String name, ModelMap modelMap) {
        if (name == null)
            return "redirect:/tags.html";
        modelMap.put("dsTags", tagsDAO.SearchTag(name));
        modelMap.put("name", name);
        return "backend/searchtags";
    }
    
    @RequestMapping(value = "/{id}/delete-tags", method = {RequestMethod.GET,RequestMethod.POST})
    public String deleteTag(@PathVariable(value = "id") int id, ModelMap modelMap){
        //int id = Integer.parseInt(request.getParameter("id"));
        boolean delTag = tagsDAO.DeleteTag(id);
        if (delTag == true)
            modelMap.addAttribute("thongbao", "Xoa thanh cong");
        else 
            modelMap.addAttribute("loi", "Xoa that bai");
        return "redirect:/tags.html";
    }
    
}
