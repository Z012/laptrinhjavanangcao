package controller;

/**
 *
 * @author mk
 */

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.*;
import modelDAO.*;
import org.springframework.web.portlet.ModelAndView;

@Controller
@RequestMapping(value="/tags")
public class TagsController {
    
    @RequestMapping(method = RequestMethod.GET)
//    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception{
//        //List<Tags> dsTags = tagsDAO.getAll();
//        ModelAndView mv = new ModelAndView("backend/tags");
//        try {
//            List<Tags> lst = tagsDAO.getAll();
//            mv.addObject("dsTags", lst);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        //modelandview.addObject("dsTags", dsTags);
//        return mv;
//    }
    public String index(ModelMap model){
        List<Tags> dsTags = tagsDAO.getAll();
        model.put("dsTags", dsTags);
        return "backend/tags";
    }
}
