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
import modelDAO.commentsDAO;
import modelDAO.messagesDAO;
import modelDAO.postsDAO;
import modelDAO.rolesDAO;
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
        modelmap.put("lsUser", usersDAO.ListAll());
        modelmap.put("numberUser", usersDAO.CountUser());
        modelmap.put("numberTag", tagsDAO.CountTags());
        modelmap.put("numberRole", rolesDAO.CountRole());
        modelmap.put("numberPost", postsDAO.CountPost());
        modelmap.put("numberComment", commentsDAO.CountComment());
        modelmap.put("numberMessage", messagesDAO.CountMessage());
        return "backend/index";
    }
}
