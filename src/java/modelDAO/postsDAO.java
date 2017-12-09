package modelDAO;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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

    private static final DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
    private static final Date dateobj = new Date();
    
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

    public static List<Post> SearchTitle(String str) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("from Post where Title like :title or Description like :title");
        query.setParameter("title", "%"+str+"%");
        List<Post> dsPost = query.list();
        session.close();
        return dsPost;
    }

    public static Post ViewDetail(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Post post = (Post) session.get(Post.class, id);
        session.close();
        return post;
    }

    public static boolean AddPost(String title, String des, String content, int status) {
//        System.out.println("check 1");
        Session session = HibernateUtil.getSessionFactory().openSession();
//        System.out.println("check 1");

        
        //String dateNow = formatter.format(currentDate.getTime());
        try {
            session.beginTransaction();
            Post post = new Post();
            post.setTitle(title);
            post.setDescription(des);
            post.setContent(content);
            post.setStatus(status);
            post.setDateCreated(dateobj);
            post.setDateModified(dateobj);
            Set<Post> ps = new HashSet<>();
            ps.add(post);
            session.save(post);
            session.getTransaction().commit();
//            System.out.println("check 1");
            return true;
        } catch (Exception e) {
            System.err.println(e);
            session.getTransaction().rollback();
            return false;
        } finally {
            session.close();
        }
    }
    
    public static boolean UpdatePost(int id, String title, String des, String content) {
        Post ps = ViewDetail(id);
        if (ps == null)
            return false;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            ps.setTitle(title);
            ps.setDescription(des);
            ps.setContent(content);
            ps.setDateModified(dateobj);
            ps.setStatus(1);
            session.update(ps);
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
    
    public static boolean DeletePost(int id) {
        Post post = (Post) ViewDetail(id);
        if (post == null)
            return false;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            session.delete(post);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            return false;
        } finally {
            session.close();
        }     
    }
    
//    public static void main(String[] args) {
//        System.out.println(AddPost("toi la ai", "TEst thanh cong trong cong cuoc ", "123 456 789 123 456 789", 0));
//    }
}
