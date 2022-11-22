package BookStore.Model;

public class Slider {
    private int id;
    private String name;
    private String img;

    public Slider() {
    }

    public Slider(int id,String name, String img) {
        this.id = id;
        this.name = name;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String toString(){
        return "id: " + id+ "   "+ "name" + name +  "img: " + img ;
    }
}
