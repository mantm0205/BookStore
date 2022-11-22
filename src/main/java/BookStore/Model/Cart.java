package BookStore.Model;

import javax.servlet.http.HttpSession;

import java.util.List;

public class Cart extends AbstracModel{
    List<Item> items ;
    private String customerId;

    public Cart() {
    }

    public Cart(List<Item> items, String customerId) {
        this.items = items;
        this.customerId = customerId;
    }


    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }
    public Integer totalPrice(){
        Integer total = 0;
        for (Item item: items){
            total += item.getQuantity() * item.getProduct().getPrice();
        }
        return total;
    }
    public Item getItem(Integer itemid){
        for (Item it: items){
            if (it.getId() == itemid){

                return it;
            }
        }
        return null;
    }
    public List<Item> removeItem(Integer itemId){
        for (Item item : items){
            if (item.getProduct().getId() == itemId){
                items.remove(item);
                return items;
            }
//            return items;
        }
        return items;
    }
    public long size(){
        return items.size();
    }

    public static Cart getCart(HttpSession session){
        return session.getAttribute("cart") == null ? new Cart() : (Cart) session.getAttribute("cart");
    }

    public void commit(HttpSession session){
        session.setAttribute("cart", this);
    }

    public void update(int productId, int quantity){
        Item item = items.get(productId);

        item.setQuantity(quantity + item.getQuantity());

        if (item.getQuantity() <= 0) {
            items.remove(productId);
        }

    }
    public Item getItem1(Integer itemId){
        for (Item cd : items) {
            if(cd.getProduct().getId() == itemId)
                return cd;
        }
        return null;
    }

    public void setCustomerId(int user_id) {
    }

    @Override
    public String toString() {
        return "Cart{" +
                "items=" + items +
                ", customerId='" + customerId + '\'' +
                '}';
    }
}
