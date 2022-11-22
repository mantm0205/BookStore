package BookStore.Dao;

import BookStore.Model.Product;

import java.util.List;

public interface IProductDAO {
    List<Product> getByName(String name);
    List<Product> getByCategory(String cid);
    List<Product> getByPublisher(String id);
    List<Product> getAll();
    List<Product> getNewProduct();
    List<Product> getProductbyPrice();
    Product getOne(String id);
    List<Product> getSaleProduct();
    Product getLastProduct();
    List<Product> SmallPrice();
    List<Product> MediumPrice();
    List<Product> LargePrice();
    List<Product> get12Product();
    List<Product> getNextProduct(int count);

    Product getProductById(String id);
    List<Product> getPageProduct(List<Product> list,int start,int end);
    List<Product> getByPrice(String price);
    void deleteProduct(String id);
    void insertProduct(Product product);
    void updateProduct(Product product);

    List<Product> getRandomPr();
}
