package BookStore.Model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Order implements Serializable{
    private Integer id;
    private Integer cart_id;
    private Integer product_id;
    private Integer user_id;
    private Integer quantity;
    private double price;
    private String content;
    private Date date;

    public Order() {
    }

    public Order(Integer id, Integer cart_id, Integer product_id, Integer user_id, Integer quantity, double price, String content, Date date) {
        this.id = id;
        this.cart_id = cart_id;
        this.product_id = product_id;
        this.user_id = user_id;
        this.quantity = quantity;
        this.price = price;
        this.content = content;
        this.date = date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCart_id() {
        return cart_id;
    }

    public void setCart_id(Integer cart_id) {
        this.cart_id = cart_id;
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", cart_id=" + cart_id +
                ", product_id=" + product_id +
                ", user_id=" + user_id +
                ", quantity=" + quantity +
                ", price=" + price +
                ", content='" + content + '\'' +
                ", date=" + date +
                '}';
    }
}
