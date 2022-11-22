package BookStore.mapper;

import BookStore.Model.Slider;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SliderMapper implements RowMapper<Slider>{

    @Override
    public Slider mapRow(ResultSet rs) {
        Slider slider = new Slider();
        try {
            slider.setId(rs.getInt("id"));
            slider.setName(rs.getString("name"));
            slider.setImg(rs.getString("img"));
        }catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

        return slider;
    }
}
