package BookStore.mapper;

import BookStore.Model.AbstracModel;
import BookStore.Model.Blog;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BlogMapper implements  RowMapper<Blog>  {
    @Override
    public Blog mapRow(ResultSet rs) {
        Blog blog = new Blog();
        try {
            blog.setId(String.valueOf(rs.getInt("id")));
            blog.setTitle(rs.getString("name"));
            blog.setImage(rs.getString("picture"));
            blog.setContent(rs.getString("content"));
            blog.setDateCreate(rs.getDate("dateCreate"));
            blog.setComment(rs.getString("comment"));
            blog.setShortcut(rs.getString("shortcut"));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return blog;
    }
}
