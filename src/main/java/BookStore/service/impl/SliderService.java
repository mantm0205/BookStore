package BookStore.service.impl;

import BookStore.Dao.ISliderDAO;
import BookStore.Dao.impl.SliderDAO;
import BookStore.Model.Slider;
import BookStore.service.ISliderService;

import javax.inject.Inject;
import java.util.List;

public class SliderService implements ISliderService {
    @Inject
    ISliderDAO sliderDAO;




    @Override
    public Slider getSlide() {
        return sliderDAO.getSlide();
    }
    public static void main(String[] args) {
        ISliderDAO sliderDAO = new SliderDAO();
        System.out.println(sliderDAO.getSlide());

    }
}
