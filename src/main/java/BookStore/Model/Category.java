package BookStore.Model;

public class Category extends AbstracModel {
    private int id;
    private String name;


    public Category() {
    }



    public Category(int id, String name, String code) {
        this.id = id;
        this.name = name;

    }
//    admin
public Category(int id, String name) {
    this.id=id;
    this.name=name;
}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
