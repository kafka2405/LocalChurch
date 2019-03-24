package model;

public class IntroInfo {
    private int id;
    private String headerPhoto;
    private String introImage;
    private String introTitle;
    private String introContent;
    private String authorName;
    private String authorAvatar;

    public IntroInfo(int id, String headerPhoto, String introImage, String introTitle, String introContent, String authorName, String authorAvatar) {
        this.id = id;
        this.headerPhoto = headerPhoto;
        this.introImage = introImage;
        this.introTitle = introTitle;
        this.introContent = introContent;
        this.authorName = authorName;
        this.authorAvatar = authorAvatar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHeaderPhoto() {
        return headerPhoto;
    }

    public void setHeaderPhoto(String headerPhoto) {
        this.headerPhoto = headerPhoto;
    }

    public String getIntroImage() {
        return introImage;
    }

    public void setIntroImage(String introImage) {
        this.introImage = introImage;
    }

    public String getIntroTitle() {
        return introTitle;
    }

    public void setIntroTitle(String introTitle) {
        this.introTitle = introTitle;
    }

    public String getIntroContent() {
        return introContent;
    }

    public void setIntroContent(String introContent) {
        this.introContent = introContent;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getAuthorAvatar() {
        return authorAvatar;
    }

    public void setAuthorAvatar(String authorAvatar) {
        this.authorAvatar = authorAvatar;
    }

    @Override
    public String toString() {
        return "IntroInfo{" + "id=" + id + ", headerPhoto=" + headerPhoto + ", introImage=" + introImage + ", introTitle=" + introTitle + ", introContent=" + introContent + ", authorName=" + authorName + ", authorAvatar=" + authorAvatar + '}';
    }
}
