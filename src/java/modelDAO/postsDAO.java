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
        List<Post> dsPost = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String hlq = "from Post order by DateModified desc";
        Query query = session.createQuery(hlq);
        dsPost = query.list();
        return dsPost;
    }
    
    public static List<Post> ListNumber(int soluong) {
        List<Post> dsPost = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String hlq = "from Post order by DateModified desc";
        Query query = session.createQuery(hlq).setMaxResults(soluong);
        dsPost = query.list();
        return dsPost;
    }
    
    public static Post SearchTitle(String str){
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        
        return null;
    }
    
    public static Post ViewDetail(int id) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        
        Post post = (Post) session.get(Post.class, id);
        
        session.close();
        return post;
    }
    
    public static boolean AddPost(Post post) {
        if(postsDAO.ViewDetail(post.getId()) != null)
            return false;
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
}
