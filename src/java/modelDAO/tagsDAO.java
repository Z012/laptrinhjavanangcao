package modelDAO;

/**
 *
 * @author mk
 */
import java.util.HashSet;
import java.util.List;
import java.util.Set;
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
            Query query = session.createQuery("from Tags order by Id desc");
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

    public static boolean CheckName(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        boolean ckName = false;
        try {
            Query query = session.createQuery("from Tags where Name=?");
            query.setParameter(0, name);
            List ls = query.list();

            if (ls != null && ls.size() > 0) {
                ckName = true;
            }
        } catch (Exception e) {

        } finally {
            session.close();
        }

        return ckName;
    }

    public static boolean AddTag(String title) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        boolean blTag = false;
        try {
            session.beginTransaction();
            if (!CheckName(title)) {
                Tags tg = new Tags();
                tg.setName(title);
                tg.setNumber(0);
                Set<Tags> stg = new HashSet<>();
                stg.add(tg);
                session.save(tg);
                session.getTransaction().commit();
                blTag = true;
            }
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return blTag;
    }
    
    public static boolean UpdateTagName(int id, String name) {
        Tags tg = ViewDetail(id);
        if (tg == null)
            return false;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            tg.setName(name);
            session.update(tg);
            session.getTransaction().commit();
            return true;
        } catch(Exception e) {
            session.getTransaction().rollback();
            return false;
        } finally {
            session.close();
        }
    }
    
    public static List<Tags> SearchTag(String name) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("from Tags where Name like :name");
        query.setParameter("name", "%" + name + "%");
        List<Tags> dsTags = query.list();
        session.close();
        return dsTags;
    }
    
    public static boolean DeleteTag(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Tags tg = ViewDetail(id);
        if(tg == null) {
            return false;
        }
        try {
            session.beginTransaction();
            session.delete(tg);
            session.getTransaction().commit();
            return true;
        } catch(Exception e) {
            session.getTransaction().rollback();
            return false;
        } finally {
            session.close();
        }
    }

//    public static void main(String args[]) {
//        System.out.println(UpdateTagName(15, "123 456 789"));
//        System.out.println(DeleteTag(26));
//        System.out.println(AddTag("123 456 987"));
//        System.out.println(SearchTag("on").size());
//    }
}
