/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author mk
 */
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import modelDAO.tagsDAO;
import modelDAO.usersDAO;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
    
    @RequestMapping(value="/index", method=RequestMethod.GET)
    public String home(ModelMap modelmap){
//        modelmap.addAttribute("numberUser", usersDAO.CountUser());
//        modelmap.addAttribute("numberTag", tagsDAO.CountTags());
//        Long nUser = usersDAO.CountUser();
//        Long nTag = tagsDAO.CountTags();
        modelmap.put("lsUser", usersDAO.ListNumber(5));
//        modelmap.put("numberUser", usersDAO.CountUser());
//        modelmap.put("numberTag", tagsDAO.CountTags());
        return "backend/index";
    }
}
