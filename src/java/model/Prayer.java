package model;

import java.util.Date;

public class Prayer {
    private int id;
    private String title;
    private String description;
    private String photoPath;
    private Date updateTime;

    public Prayer(int id, String title, String description, String photoPath, Date updateTime) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.photoPath = photoPath;
        this.updateTime = updateTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
