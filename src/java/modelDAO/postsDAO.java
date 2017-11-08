package modelDAO;

import java.util.ArrayList;
import java.util.List;
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
        Post post = null;
        try {
            post = (Post) session.get(Post.class, id);
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return post;
    }

    public static boolean AddPost(Post post) {
        if (postsDAO.ViewDetail(post.getId()) != null) {
            return false;
        }
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.save(post);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            System.out.println(e);
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
        } catch(Exception e) {
            
        } finally {
            session.close();
        }
        return numberPost;
    }
}
