package BookStore.Model;

public class Item extends AbstracModel{
    private Integer cartId;
    private Integer quantity;
    private Integer productid;
    private Cart cart;
    private Product product;
    private double price;


    public Item() {
    }

    public Item(Integer cartId, Integer quantity, Integer productid, Cart cart, Product product) {
        this.cartId = cartId;
        this.quantity = quantity;
        this.productid = productid;
        this.cart = cart;
        this.product = product;
    }

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void update(int productId, int quantity){
        if (product.getId() == productId) {
            setQuantity(quantity);
        }
    }

    @Override
    public String toString() {
        return "Item{" +
                "cartId=" + cartId +
                ", quantity=" + quantity +
                ", productid=" + productid +
                ", cart=" + cart +
                ", product=" + product +
                ", price=" + price +
                '}';
    }
}
