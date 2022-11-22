package BookStore.Model;

public class OrderDetails extends  AbstracModel{
    private String fullname;
    private String address;
    private String phone;
    private String email;
    private String note;


    public OrderDetails() {
    }

    public OrderDetails( String fullname, String address, String phone, String email, String note) {
        this.fullname = fullname;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.note = note;

    }


    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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


    @Override
    public String toString() {
        return "OrderDetails{" +
                ", fullname='" + fullname + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}
