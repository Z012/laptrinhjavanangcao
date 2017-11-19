package modelDAO;

/**
 *
 * @author mk
 */
import model.HibernateUtil;
import model.PostTags;
import model.Post;
import model.Tags;
import modelDAO.*;

import org.hibernate.Session;

public class postTagsDAO {

    public static boolean AddPostTags(int idPost, int idTag) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            PostTags pt = new PostTags();
            Post post = postsDAO.ViewDetail(idPost);
            Tags tag = tagsDAO.ViewDetail(idTag);
            if (post != null && tag != null) {
                pt.setPost(post);
                pt.setTags(tag);
                
                session.save(pt);
                session.getTransaction().commit();
                return true;
            }
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return false;
    }
    
    public static void main(String[] args){
        AddPostTags(1, 7);
        AddPostTags(4, 7);
        AddPostTags(5, 7);
    }
}
