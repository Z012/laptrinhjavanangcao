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
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import modelDAO.tagsDAO;
import modelDAO.usersDAO;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
    
    @RequestMapping(value="/index", method=RequestMethod.GET)
    public String home(ModelMap modelmap){
        modelmap.addAttribute("lsUser", usersDAO.ListNumber(5));
//        modelmap.addAttribute("numberUser", usersDAO.CountUser()).addAttribute("numberTag", tagsDAO.CountTags());
        return "backend/index";
    }
}
