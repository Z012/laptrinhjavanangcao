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
}
