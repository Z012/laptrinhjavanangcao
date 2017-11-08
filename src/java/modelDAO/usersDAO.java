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
import java.util.ArrayList;
import java.util.List;
import model.Users;
import model.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class usersDAO {

    public static List<Users> ListAll() {
        List<Users> lsUser = null;
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        try{
        String hlq = "from Users";
        Query query = session.createQuery(hlq);
        lsUser = query.list();
        } catch(Exception e){
            
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

    public static void main(String[] args) {
        for (Users u : usersDAO.ListNumber(5)) {
            System.out.println(u.getId());
        }
    }
}
