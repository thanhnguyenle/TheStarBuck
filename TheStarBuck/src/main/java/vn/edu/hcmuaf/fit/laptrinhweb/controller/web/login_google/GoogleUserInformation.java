package vn.edu.hcmuaf.fit.laptrinhweb.controller.web.login_google;

public class GoogleUserInformation {
    private String id;
    private String email;
    private boolean verified_email;
    private String name;
    private String given_name;
    private String family_name;
    private String picture;

    public GoogleUserInformation() {
    }

    public GoogleUserInformation(String id, String email, boolean verified_email, String name, String given_name, String family_name, String picture) {
        this.id = id;
        this.email = email;
        this.verified_email = verified_email;
        this.name = name;
        this.given_name = given_name;
        this.family_name = family_name;
        this.picture = picture;
    }

    public String getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public boolean isVerified_email() {
        return verified_email;
    }

    public String getName() {
        return name;
    }

    public String getGiven_name() {
        return given_name;
    }

    public String getFamily_name() {
        return family_name;
    }

    public String getPicture() {
        return picture;
    }

    @Override
    public String toString() {
        return "GoogleUserInformation{" +
                "id='" + id + '\'' +
                ", email='" + email + '\'' +
                ", verified_email=" + verified_email +
                ", name='" + name + '\'' +
                ", given_name='" + given_name + '\'' +
                ", family_name='" + family_name + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
