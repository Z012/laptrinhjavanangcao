package model;
// Generated Nov 6, 2017 3:29:36 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private Integer id;
     private Role role;
     private String username;
     private String password;
     private String fullName;
     private String avatarUrl;
     private Integer status;
     private String email;
     private Date dateCreated;
     private Set commentses = new HashSet(0);
     private Set messageses = new HashSet(0);
     private Set posts = new HashSet(0);

    public Users() {
    }

    public Users(Role role, String username, String password, String fullName, String avatarUrl, Integer status, String email, Date dateCreated, Set commentses, Set messageses, Set posts) {
       this.role = role;
       this.username = username;
       this.password = password;
       this.fullName = fullName;
       this.avatarUrl = avatarUrl;
       this.status = status;
       this.email = email;
       this.dateCreated = dateCreated;
       this.commentses = commentses;
       this.messageses = messageses;
       this.posts = posts;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Role getRole() {
        return this.role;
    }
    
    public void setRole(Role role) {
        this.role = role;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getFullName() {
        return this.fullName;
    }
    
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public String getAvatarUrl() {
        return this.avatarUrl;
    }
    
    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }
    public Integer getStatus() {
        return this.status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public Date getDateCreated() {
        return this.dateCreated;
    }
    
    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }
    public Set getCommentses() {
        return this.commentses;
    }
    
    public void setCommentses(Set commentses) {
        this.commentses = commentses;
    }
    public Set getMessageses() {
        return this.messageses;
    }
    
    public void setMessageses(Set messageses) {
        this.messageses = messageses;
    }
    public Set getPosts() {
        return this.posts;
    }
    
    public void setPosts(Set posts) {
        this.posts = posts;
    }




}


