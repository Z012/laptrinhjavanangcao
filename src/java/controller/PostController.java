package controller;

/**
 *
 * @author mk
 */

import model.Post;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;

import modelDAO.postsDAO;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/posts")
public class PostController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelmap){
        modelmap.put("lsPost", postsDAO.ListAll());
        return "backend/posts";
    }
    
    @RequestMapping(value="/{id}/single", method=RequestMethod.GET)
    public String viewDetail(@PathVariable("id") int id, ModelMap modelmap){
        modelmap.addAttribute("baiviet", postsDAO.ViewDetail(id));
        
        return "fontend/single";
    }
    
    @RequestMapping(value="/addpost", method = RequestMethod.GET)
    public String addPost()
    {
        return "backend/addpost";
    }
    
    @RequestMapping(value = "/store", method = RequestMethod.POST)
    public String storePost(@RequestParam(value = "title", required = true) String title, 
                @RequestParam(value = "description", required = true) String description, 
                @RequestParam(value = "content", required = true) String content) {       
        postsDAO.AddPost(title, description, content, 1);
        return "redirect:/posts.html";
    }
    
    @RequestMapping(value = "/{id}/edit-post", method = RequestMethod.GET)
    public String editPost(@PathVariable(value = "id") int id, ModelMap modelMap) {
        Post post = postsDAO.ViewDetail(id);
        modelMap.put("post", post);
        return "backend/editpost";
    }
    
    @RequestMapping(value = "/{id}/update-post", method = RequestMethod.POST)
    public String update(@PathVariable(value = "id") int id,
            @RequestParam(value="title") String title,
            @RequestParam(value="description") String description,
            @RequestParam(value="content") String content,
            ModelMap modelMap) {
        boolean updatePost = postsDAO.UpdatePost(id, title, description, content);
        if (updatePost)
            modelMap.addAttribute("thongbao", "Cap nhat thanh cong");
        else 
            modelMap.addAttribute("loi", "Cap nhat that bai");
        return "redirect:/posts.html";
    }
    
    @RequestMapping(value = "/{id}/delete-post", method = {RequestMethod.GET, RequestMethod.POST})
    public String deletePost(@PathVariable(value = "id")int id, ModelMap modelMap) {
        boolean delPost = postsDAO.DeletePost(id);
        if (delPost)
            modelMap.addAttribute("thongbao", "Xoa thanh cong");
        else 
            modelMap.addAttribute("loi", "Xoa that bai");
        return "redirect:/posts.html";
    }
}
