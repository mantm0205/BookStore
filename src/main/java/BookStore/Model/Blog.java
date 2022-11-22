package BookStore.Model;

import java.sql.Date;

public class Blog {
    String id;
    Date dateCreate;
    String title;
    String content;
    String comment;
    String image;
    String shortcut;

    public Blog() {
    }

    public Blog(String id, Date dateCreate, String title, String content, String comment, String image,String shortcut) {
        this.id = id;
        this.dateCreate = dateCreate;
        this.title = title;
        this.content = content;
        this.comment = comment;
        this.image = image;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(Date dateCreate) {
        this.dateCreate = dateCreate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getShortcut() {
        return shortcut;
    }

    public void setShortcut(String shortcut) {
        this.shortcut = shortcut;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id='" + id + '\'' +
                ", dateCreate=" + dateCreate +
                ", title='" + title + '\'' +
                ", comment='" + comment + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
