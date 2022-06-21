package vn.edu.hcmuaf.fit.laptrinhweb.dao;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Slide;

import java.util.List;

public interface ISlideDAO extends IGenericDAO<Slide> {
    List<Slide> findAll();
    Long save(Slide slide);
    List<Slide> printTypeSlide(String type,int num);
    Long deleteItem(String id);
}
