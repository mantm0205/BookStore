package BookStore.mapper;

import BookStore.Model.Item;

import java.sql.ResultSet;

public class ItemMapper implements RowMapper<Item>{

    @Override
    public Item mapRow(ResultSet rs) {
            Item item = new Item();
        try {
            item.setId(rs.getInt("id"));


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
