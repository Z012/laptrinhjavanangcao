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

public class rolesDAO {
    
    public static List<Role> ListAll(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from Role");
        return query.list();
    }
}
