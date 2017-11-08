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

import java.util.List;
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
}
