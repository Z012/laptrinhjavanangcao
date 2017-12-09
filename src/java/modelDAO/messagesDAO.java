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
import modelDAO.*;
import org.hibernate.Session;

public class messagesDAO {
    
    public static List<Messages> ListAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Messages> lsMSM = null;
        try {
            lsMSM = session.createQuery("from Messages").list();
        } catch(Exception e) {
            
        } finally {
            session.close();
        }
        return lsMSM;
    }
    
    public static int CountMessage() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        int numberMessage = 0;
        try {
            numberMessage = session.createQuery("from Messages").list().size();
        } catch(Exception e) {
            
        } finally {
            session.close();
        }
        return numberMessage;
    }
    
    public static boolean SendMessage(String user, String email, String content) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            Messages mss = new Messages();
            usersDAO.AddUser(email, user);
            int id = usersDAO.ResultId(email);
            Users acc = usersDAO.ViewDetail(id);
            mss.setContent(content);
            mss.setUsers(acc);
            session.save(mss);
            session.getTransaction().commit();
            return true;
        } catch(Exception e) {
            session.getTransaction().rollback();
            return false;
        } finally {
            session.close();
        }
    } 
}
