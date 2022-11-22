package BookStore.mapper;

import BookStore.Model.Sale;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SaleMapper implements RowMapper<Sale>{
    @Override
    public Sale mapRow(ResultSet rs) {
        Sale sale = new Sale();
        try {
            sale.setId(rs.getInt("id"));
            sale.setPercent(rs.getString("name"));
            sale.setPriceSale(rs.getDouble("price_sale"));
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return sale;
    }
}
