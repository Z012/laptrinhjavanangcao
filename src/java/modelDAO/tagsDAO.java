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
        String hlq = "from Tags";
        Query query = session.createQuery(hlq);
        return query.list();
    }
    
    public static Long CountTags(){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String hlq = "select count(*) from Tags";
        Query query = session.createQuery(hlq);
        Long numberTag = (Long)query.uniqueResult();
        return numberTag;
    }
}
