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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import model.Users;
import model.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class usersDAO {

    private static final DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
    private static final Date dateobj = new Date();

    public static boolean Login(String email, String pass) {
        boolean userFound = false;
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "from Users where Email=? and Password=?";
        Query query = session.createQuery(hql);
        query.setParameter(0, email);
        query.setParameter(1, pass);
        List ls = query.list();

        if ((ls != null) && (ls.size() > 0)) {
            userFound = true;
        }
        session.close();
        return userFound;
    }

    public static boolean AddUser(String email, String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            if (ResultId(email) == -1) {
                session.beginTransaction();
                Users user = new Users();
                user.setEmail(email);
                user.setUsername(name);
                user.setDateCreated(dateobj);
                user.setRole(rolesDAO.ViewDetail(8));

                Set<Users> scmm = new HashSet<Users>();
                scmm.add(user);

                session.save(user);
                session.getTransaction().commit();
                return true;
            }
        } catch (Exception e) {
        } finally {
            session.close();
        }
        return false;
    }

//    public static boolean DeleteUser(int id) {
//        
//        Users user = (Users) ViewDetail(id);
//        if (user == null || user.getRole().getId() == 1) {
//            System.out.print("Check 1");
//            return false;
//        }
//        
//        Session session = HibernateUtil.getSessionFactory().openSession(); 
//        try {    
//            session.beginTransaction().begin();
//            session.delete(user);
//            session.getTransaction().commit();
//            System.out.println("Okay");
//            return true;
//        } catch (Exception e) {     
//            session.getTransaction().rollback();
//        } finally {
//            session.close();
//        }
//        System.out.print("Check 2");
//        return false;
//    }
//    public static boolean DeleteUser(int id) {
//        
//        Users user = (Users) ViewDetail(id);
//        if (user == null || user.getRole().getId() == 1) {
//            System.out.println("Check 1");
//            return false;
//        }
//        System.out.println("Start");
//        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
//        System.out.println("Check 2");
//        session.getTransaction().begin();
//        System.out.println("Check 3");
//        Query query = session.createQuery("delete from Users where Id=:id");
//        System.out.println("Check 4");
//        query.setParameter("id", id);
//        System.out.println("Check 5");
//        session.close();
//        System.out.println("Check 6");
//        return true;
//    }
    public static Users ViewDetail(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Users user = (Users) session.get(Users.class, id);
        session.close();
        return user;
    }

    public static List<Users> SearchUser(String str) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Users where Email like :str or Username like :str");
        query.setParameter("str", "%" + str + "%");
        List<Users> lsUs = query.list();
        session.close();
        return lsUs;
    }

    public static int ResultId(String email) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Users where Email=?");
        query.setParameter(0, email);
        List<Users> lsUser = query.list();
        session.close();
        if ((lsUser != null) && (lsUser.size()) > 0) {
            return lsUser.get(0).getId();
        } else {
            return -1;
        }
    }

    public static List<Users> ListAll() {
        List<Users> lsUser = null;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        try {
            String hlq = "from Users";
            Query query = session.createQuery(hlq);
            lsUser = query.list();
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return lsUser;
    }

    public static List<Users> ListNumber(int quatity) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        List<Users> lsUser = null;
        try {
            lsUser = session.createQuery("from Users order by DateCreated desc").list();
        } catch (Exception e) {
        } finally {
            session.close();
        }
        return lsUser;
    }

    public static int CountUser() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        int numberUser = 0;
        try {

            String hlq = "from Users";
            Query query = session.createQuery(hlq);
            numberUser = query.list().size();
        } catch (Exception e) {
        } finally {
            session.close();
        }

        return numberUser;
    }

//    public static void main(String[] args) {
//        System.out.println(DeleteUser(7));
//        System.out.println(ViewDetail(5).getFullName());
//        System.out.println(CountUser());
//        System.out.print(ViewDetail(5));
//    }
}
