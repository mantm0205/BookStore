package BookStore.mapper;

import BookStore.Model.Category;
import BookStore.Model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product>{

    @Override
    public Product mapRow(ResultSet rs) {
        Product product = new Product();

        try {
            product.setId(rs.getInt("id"));
//            product.setCode(rs.getString("code_product"));
            product.setName(rs.getString("name"));
            product.setPrice(rs.getInt("price"));
            product.setImg(rs.getString("picture"));
            product.setDescription(rs.getString("description"));
            product.setQuantity(rs.getInt("quanity"));
            product.setPublisherid(rs.getInt("publisher_id"));
            product.setCategoryid(rs.getInt("category_id"));
            product.setSaleid(rs.getInt("sale_id"));
            product.setAuthorid(rs.getInt("author_id"));



        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }
        return product;


    }
}
