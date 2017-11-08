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
import org.hibernate.SessionFactory;

public class tagsDAO {

    public static List<Tags> ListAll() {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        List<Tags> lsTag = null;
        try {
            Query query = session.createQuery("from Tags");
            lsTag = query.list();
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return lsTag;
    }
    
    public static Tags ViewDetail(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Tags tag = (Tags) session.get(Tags.class, id);
        session.close();
        return tag;
    }

    public static int CountTags() {
        SessionFactory sessionFac = HibernateUtil.getSessionFactory();
        Session session = sessionFac.openSession();
        int numberTag = 0;
        try {
            Query query = session.createQuery("from Tags");
            numberTag = query.list().size();
        } catch (Exception e) {
        } finally {
            session.close();
        }
        return numberTag;
    }
}
