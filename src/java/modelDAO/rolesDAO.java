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
    
    public static Role ViewDetail(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Role role = (Role) session.get(Role.class, id);
        session.close();
        return role;
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
    
    public static boolean UpdateRole (int id, String name, String des) {
        Role role = ViewDetail(id);
        if (role == null)
            return false;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            role.setName(name);
            role.setDescription(des);
            session.update(role);
            session.getTransaction().commit();
            return true;
        } catch(Exception e) {
            session.getTransaction().rollback();
            return false;
        } finally {
            session.close();
        }
    }
    
    public static List<Role> SearchRole (String str) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Role where Name like :str or Description like :str");
        query.setParameter("str", "%"+str+"%");
        List<Role> lsRole = query.list();
        session.close();
        return lsRole;
    }
    
    public static boolean DeleteRole (int id) {
        Role role = (Role) ViewDetail(id);
        if (role == null || "Admin".equals(role.getName())) {
            //System.out.print("Check 1");
            return false;
        }
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.delete(role);
            session.getTransaction().commit();
            //System.out.println("Check 2");
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            //System.out.println("Check 3");
            return false;
        } finally {
            session.close();
        }
    }
    
//    public static void main(String[] args) {
//        System.out.println(DeleteRole(4));
//    }
}
