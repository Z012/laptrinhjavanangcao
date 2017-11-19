package modelDAO;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.hibernate.Query;
import org.hibernate.Session;

import model.Post;
import model.HibernateUtil;

/**
 *
 * @author mk
 */
public class postsDAO {

    public static List<Post> ListAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Post> lsPost = null;
        try {
            lsPost = session
                    .createQuery("from Post order by DateModified desc").list();
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return lsPost;
    }

    public static List<Post> ListNumber(int soluong) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Post> lsPost = null;
        try {
            String hlq = "from Post order by DateModified desc";
            Query query = session.createQuery(hlq).setMaxResults(soluong);
            lsPost = query.list();
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return lsPost;
    }

    public static Post SearchTitle(String str) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();

        return null;
    }

    public static Post ViewDetail(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Post post = (Post) session.get(Post.class, id);
        session.close();
        return post;
    }

    public static boolean AddPost(Post post) {
        if (postsDAO.ViewDetail(post.getId()) != null) {
            return false;
        }
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            Set<Post> pst = new HashSet<Post>();
            pst.add(post);
            session.save(post);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            return false;
        } finally {
            session.close();
        }
    }

    public static int CountPost() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        int numberPost = 0;
        try {
            numberPost = session.createQuery("from Post").list().size();
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return numberPost;
    }
}
