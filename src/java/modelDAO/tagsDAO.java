package modelDAO;

/**
 *
 * @author mk
 */

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

import model.*;

public class tagsDAO {
    
    public static List<Tags> getAll() {
        List<Tags> dsTags = null;
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String hlq = "from Tags";
        Query query = session.createQuery(hlq);
        dsTags = query.list();
        return dsTags;
    }
}
