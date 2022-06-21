package vn.edu.hcmuaf.fit.laptrinhweb.service;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Slide;

import java.util.List;

public interface ISlideService {
    List<Slide> findAll();
    Long save(Slide slide);
    List<Slide> printTypeSlide(String type,int num);
    Long deleteItem(String id);
}
