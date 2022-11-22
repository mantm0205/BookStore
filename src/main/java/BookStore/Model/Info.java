package BookStore.Model;

public class Info extends AbstracModel{
    private String firstName;
    private String lastName;
    private String address;
    private String conscious;
    private String distric;
    private String wards;
    private String phone;
    private String email;
    private String note;

    public Info(String firstName, String lastName, String address, String conscious, String distric, String wards, String phone, String email, String note) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.conscious = conscious;
        this.distric = distric;
        this.wards = wards;
        this.phone = phone;
        this.email = email;
        this.note = note;
    }

    public Info() {

    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getConscious() {
        return conscious;
    }

    public void setConscious(String conscious) {
        this.conscious = conscious;
    }

    public String getDistric() {
        return distric;
    }

    public void setDistric(String distric) {
        this.distric = distric;
    }

    public String getWards() {
        return wards;
    }

    public void setWards(String wards) {
        this.wards = wards;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
