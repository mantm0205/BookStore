package BookStore.Dao.impl;

import BookStore.Dao.ISliderDAO;
import BookStore.Model.Slider;
import BookStore.mapper.SliderMapper;

import java.util.List;

public class SliderDAO extends AbstractDAO<Slider> implements ISliderDAO{

    @Override
    public Slider getSlide() {
        String sql = "SELECT * FROM slider";
        return queryOne(sql,new SliderMapper());
    }
}
