// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.devmedia.javamagazine.restfulapi.model.bean;

import br.com.devmedia.javamagazine.restfulapi.model.bean.Comment;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Comment_Roo_Jpa_Entity {
    
    declare @type: Comment: @Entity;
    
    declare @type: Comment: @Table(name = "comments");
    
    @Version
    @Column(name = "version")
    private Integer Comment.version;
    
    public Integer Comment.getVersion() {
        return this.version;
    }
    
    public void Comment.setVersion(Integer version) {
        this.version = version;
    }
    
}
