/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

/**
 *
 * @author mk
 */
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import model.*;
import org.hibernate.Query;
import org.hibernate.Session;

public class commentsDAO {

    private static final DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
    private static final Date dateobj = new Date();

    public static List<Comments> ListAll() {
        List<Comments> lsComment = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            lsComment = session.createQuery("from Comments").list();
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return lsComment;
    }

    public static List<Comments> ListCommentPost(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Comments where PostId = :id");
        query.setParameter("id", id);
        List<Comments> lsCm = query.list();
        return lsCm;
    }

    public static Comments ViewDetail(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Comments cm = (Comments) session.get(Comments.class, id);
        session.close();
        return cm;
    }

    public static List<Comments> SearchComment(String str) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query query = session.createQuery("from Comments where Content like :search");
        query.setParameter("search", "%" + str + "%");
        List<Comments> lsCm = query.list();
        session.close();
        return lsCm;
    }
    // Loi chua fix duoc
    public static void SelectiveComment() {
        String fuk[] = {"dit", "fuck", "det"};
        String search = "dit";
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Query query = session.createQuery("delete from Comments where Content like :search");
        
        query.setParameter("search", "%" + search + "%");
        session.getTransaction().commit();
        session.close();
    }

    public static int CountComment() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        int numberComment = 0;
        try {
            numberComment = session.createQuery("from Comments").list().size();
        } catch (Exception e) {

        } finally {
            session.close();
        }
        return numberComment;
    }

    public static boolean AddComment(String email, String name, String content, int idPost) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.beginTransaction();
            Comments cmm = new Comments();
            usersDAO.AddUser(email, name);
            int id = usersDAO.ResultId(email);
            Users acc = usersDAO.ViewDetail(id);
            Post pt = postsDAO.ViewDetail(idPost);

            cmm.setPost(pt);
            cmm.setUsers(acc);
            cmm.setContent(content);
            cmm.setDateCreated(dateobj);
            session.save(cmm);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
        } finally {
            session.close();
        }
        return false;
    }

    public static void main(String[] args) {
//      
//        System.out.println(AddComment("vuhungcuong123@gmail.com", "Vu Cuong", "Toi danh gia cao bai viet nay", 1));
//        Users acc = ViewDetail(1).getUsers();
//        System.out.println(ViewDetail(1).getUsers().getEmail());
        System.out.println(CountComment());
        SelectiveComment();
        System.out.println(CountComment());
    }
}
