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
import model.Users;
import model.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class usersDAO {
    
    public static List<Users> ListAll(){
        List<Users> lsUser = null;
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String hlq = "from Users";
        Query query = session.createQuery(hlq);
        lsUser = query.list();
        return lsUser;
    }
    
    public static Long CountUser() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String hlq = "select count(*) from Users";
        Query query = session.createQuery(hlq);
        Long numberUser = (Long)query.uniqueResult();
        return numberUser;
    }
}
