/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

/**
 *
 * @author mk
 */

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import model.*;
import org.hibernate.Session;


public class commentsDAO {
    
    public static List<Comments> ListAll() {
        List<Comments> lsComment = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            lsComment = session.createQuery("from Comments").list();
        } catch(Exception e) {
            
        } finally {
            session.close();
        }
        return lsComment;
    }
    
    public static int CountComment() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        int numberComment = 0;
        try {
            numberComment = session.createQuery("from Comments").list().size();
        } catch(Exception e) {
            
        } finally {
            session.close();
        }
        return numberComment;
    }
    
    public static boolean AddComment(String email, String name, String content, int idPost){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
            session.beginTransaction();
            Comments cmm = new Comments();
            int id = usersDAO.ResultId(email);
            if(id > 0){
                Users acc = usersDAO.ViewDetail(id);
                Post pt = postsDAO.ViewDetail(idPost);
                
                Set<Users> scmm = new HashSet<Users>();
                scmm.add(acc);
                
                Set<Post> spt = new HashSet<Post>();
                spt.add(pt);
                
                cmm.setPost(pt);
                cmm.setUsers(acc);
                
                
            }
        } catch(Exception e) {
            
        } finally {
            session.close();
        }
        return false;
    }
    
    public static void main(String[] args) {
        
    }
}
