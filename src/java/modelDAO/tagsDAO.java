package modelDAO;

/**
 *
 * @author mk
 */

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

import model.HibernateUtil;
import model.Tags;

public class tagsDAO {
    
    public static List<Tags> ListAll() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from Tags");
        return query.list();
    }
    
    public static Long CountTags(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("select count(*) from Tags");
        Long numberTag = (Long)query.uniqueResult();
        return numberTag;
    }
}
