package BookStore.Model;

public class Publisher {

    private int id;
    private String publishername;

    public Publisher() {
    }

    public Publisher(int id, String publishername) {
        this.id = id;
        this.publishername = publishername;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getPublishername() {
        return publishername;
    }

    public void setPublishername(String publishername) {
        this.publishername = publishername;
    }

    @Override
    public String toString() {
        return "Publisher{" +
                "id=" + id +
                ", publishername='" + publishername + '\'' +
                '}';
    }
}
