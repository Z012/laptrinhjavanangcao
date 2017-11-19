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
import model.Role;
import model.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class rolesDAO {

    public static List<Role> ListAll() {
        SessionFactory sessionFac = HibernateUtil.getSessionFactory();
        Session session = sessionFac.openSession();
        List<Role> lsRole = null;
        try {
            lsRole = session.createQuery("from Role").list();
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return lsRole;
    }
    
    public static int CountRole() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        int numberRole = 0;
        try{
            numberRole = session.createQuery("from Role").list().size();
        } catch(Exception e) {
            
        } finally {
            session.close();
        }
        return numberRole;
    }
    
    public static boolean AddRole(String name, String Description) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Role role = new Role();
        try {
            session.beginTransaction();
            role.setName(name);
            role.setDescription(Description);
            session.save(role);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            
        } finally {
            session.close();
        }
        return false;
    }
}
