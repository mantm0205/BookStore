package BookStore.Dao.impl;

import BookStore.Dao.IProductDAO;
import BookStore.Model.Product;
import BookStore.config.ConnectionPool;
import BookStore.mapper.ProductMapper;
import BookStore.mapper.SaleMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {
    @Override
    public List<Product> getByName(String name) {
        name = "%"+ name +"%";
        String sql = "SELECT * FROM products WHERE `name` like ?";
        return query(sql,new ProductMapper(),name);
    }



    @Override
    public List<Product> getByCategory(String cid) {
        String sql ="SELECT * FROM products WHERE category_id = ?";
        return query(sql,new ProductMapper(),cid);
    }

    @Override
    public List<Product> getByPublisher(String pubid) {
        String sql = "SELECT * FROM products WHERE publisher_id = ?";


        return query(sql,new ProductMapper(),pubid);
    }

    @Override
    public List<Product> getAll() {
        String sql = "SELECT * FROM products";

        return query(sql, new ProductMapper());
    }


    @Override
    public List<Product> getNewProduct() {
        String sql = "SELECT * FROM products ORDER BY id DESC LIMIT 6";
        return query(sql,new ProductMapper());
    }

    @Override
    public Product getOne(String id) {
        String sql = "SELECT p.*,pub.`name` as publishername,cate.`name` as category,au.name as authors " +
                "FROM ((((products p JOIN publisher pub ON p.publisher_id = pub.id)" +
                "JOIN category cate ON p.category_id = cate.id) JOIN sale sl ON p.sale_id = sl.id) " +
                "JOIN author au ON p.author_id = au.id) WHERE p.id = ?;";
        return queryOne(sql,new ProductMapper(),id);
    }

    @Override
    public List<Product> getSaleProduct() {
        String sql = "SELECT p.*,sl.* FROM products p JOIN sale sl ON p.sale_id = sl.id WHERE p.sale_id = 2";
        return query(sql,new ProductMapper(),new SaleMapper());
    }

    @Override
    public Product getLastProduct() {
        String sql = "SELECT * FROM products ORDER BY id DESC LIMIT 1;";
        return queryOne(sql,new ProductMapper());
    }

    @Override
    public Product getProductById(String id) {
        String sql ="SELECT * FROM products WHERE id = ?";
        return queryOne(sql,new ProductMapper(),id);
    }



    @Override
    public List<Product> getPageProduct(List<Product> list, int start, int end) {
        List<Product> arr = new ArrayList<>();
        for (int i = start;i<end;i++){
            arr.add(list.get(i));
        }
        return arr;
    }

    @Override
    public List<Product> getByPrice(String price) {
        String sql = "SELECT * FROM products WHERE price BETWEEN ? AND ?";
        return query(sql,new ProductMapper(),price);
    }

    public void deleteProduct(String id){
        String sql = "delete from products where id = ?";
        Connection con = null;
        PreparedStatement pr = null;
        try {
            con = new ConnectionPool().getConnection("delete");
            pr = con.prepareStatement(sql);
            pr.setString(1, id);
            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public void insertProduct(Product product) {
        StringBuffer sql = new StringBuffer("insert   products(products.`name`, products.picture, products.description, " +
                "products.price, products.quanity, products.publisher_id, products.category_id, " +
                "products.author_id ) values (?,?, ?, ?, ?, ?,?,?);");
//         insert(sql.toString(), product.getName(), product.getImg(), product.getDescription(),
//                product.getPrice(), product.getQuantity(), product.getPublisherid(), product.getCategoryid(),
//                product.getAuthorid());

        Connection con = null;
        PreparedStatement pr = null;
        try {
            con = new ConnectionPool().getConnection("delete");
            pr = con.prepareStatement(String.valueOf(sql));
            pr.setString(1, product.getName());
            pr.setString(2, product.getImg());
            pr.setString(3, product.getDescription());
            pr.setInt(4, product.getPrice());
            pr.setInt(5, product.getQuantity());
            pr.setInt(6, product.getPublisherid());
            pr.setInt(7, product.getCategoryid());
            pr.setInt(8, product.getAuthorid());

            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public void updateProduct(Product product){
        String sql = "UPDATE products SET `name`= ?, picture = ?, description = ?, price = ?, " +
                "quanity = ?, publisher_id = ?, category_id = ?, author_id = ? WHERE\tid = ?";

        Connection con = null;
        PreparedStatement pr = null;
        try {
            con = new ConnectionPool().getConnection("update");
            pr = con.prepareStatement(sql);
            pr.setString(1, product.getName());
            pr.setString(2, product.getImg());
            pr.setString(3, product.getDescription());
            pr.setString(4, String.valueOf(product.getPrice()));
            pr.setString(5, String.valueOf(product.getQuantity()));
            pr.setString(6, String.valueOf(product.getPublisherid()));
            pr.setString(7, String.valueOf(product.getCategoryid()));
            pr.setString(8, String.valueOf(product.getAuthorid()));
            pr.setString(9, String.valueOf(product.getId()));
            pr.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Product> getRandomPr() {
        String sql = "SELECT * FROM products\n" +
                "ORDER BY RAND()\n" +
                "LIMIT 5";

        return query(sql, new ProductMapper());
    }


    public List<Product> getProductbyPrice() {
        String sql = "SELECT * FROM products p ORDER BY p.price";
        return query(sql,new ProductMapper());
    }




    @Override
    public List<Product> SmallPrice() {
        String sql = "SELECT * FROM products p WHERE p.price BETWEEN 0 AND 50000";
        return query(sql,new ProductMapper());
    }

    @Override
    public List<Product> MediumPrice() {
        String sql = "SELECT * FROM products p WHERE p.price BETWEEN 50000 AND 100000";
        return query(sql,new ProductMapper());
    }

    @Override
    public List<Product> LargePrice() {
        String sql = "SELECT * FROM products p WHERE p.price > 100000";
        return query(sql,new ProductMapper());
    }

    @Override
    public List<Product> get12Product() {
        String sql = "SELECT * FROM products LIMIT 12";
        return query(sql,new ProductMapper());
    }

    @Override
    public List<Product> getNextProduct(int count) {
        String sql = "SELECT * FROM products LIMIT ?,8";
        return query(sql, new ProductMapper(), count);
    }





}
