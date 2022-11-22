package BookStore.mapper;

import BookStore.Model.Category;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper<Category>{
    @Override
    public Category mapRow(ResultSet rs) {
        Category category = new Category();
        try {
            category.setId(rs.getInt("id"));
            category.setName(rs.getString("name"));
        } catch (SQLException e) {
            return null;
        }
        return category;
    }
}
