// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.devmedia.javamagazine.restfulapi.model.bean;

import br.com.devmedia.javamagazine.restfulapi.model.bean.Comment;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Comment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Comment.entityManager;
    
    public static final EntityManager Comment.entityManager() {
        EntityManager em = new Comment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Comment.countComments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Comment o", Long.class).getSingleResult();
    }
    
    public static List<Comment> Comment.findAllComments() {
        return entityManager().createQuery("SELECT o FROM Comment o", Comment.class).getResultList();
    }
    
    public static Comment Comment.findComment(String id_) {
        if (id_ == null || id_.length() == 0) return null;
        return entityManager().find(Comment.class, id_);
    }
    
    public static List<Comment> Comment.findCommentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Comment o", Comment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Comment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Comment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Comment attached = Comment.findComment(this.id_);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Comment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Comment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Comment Comment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Comment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
