package model;

public class Contact {
    private int id;
    private String address;
    private String tel;
    private String email;
    private String photoPath;
    private String city;
    private String country;

    public Contact(int id, String address, String tel, String email, String photoPath, String city, String country) {
        this.id = id;
        this.address = address;
        this.tel = tel;
        this.email = email;
        this.photoPath = photoPath;
        this.city = city;
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public String toString() {
        return "Contact{" + "id=" + id + ", address=" + address + ", tel=" + tel + ", email=" + email + ", photoPath=" + photoPath + ", city=" + city + ", country=" + country + '}';
    }
}
