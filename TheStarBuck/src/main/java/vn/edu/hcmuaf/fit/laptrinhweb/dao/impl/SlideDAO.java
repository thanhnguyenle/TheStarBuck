package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.ISlideDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.SlideMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Slide;

import java.util.List;

public class SlideDAO extends  AbstractDAO<Slide> implements ISlideDAO {
    private static SlideDAO instance;
    private SlideDAO(){}

    public static SlideDAO getInstance() {
        if(instance == null)
            instance = new SlideDAO();
        return instance;
    }

    @Override
    public List<Slide> findAll() {
        List<Slide> output = query(QUERIES.SLIDER.GET_LIST, new SlideMapper());
        return output;
    }

    @Override
    public Long save(Slide slide) {
        return null;
    }

    @Override
    public List<Slide> printTypeSlide(String type,int num) {
        return query(QUERIES.SLIDER.GETBANNER,new SlideMapper(),type,num);
    }
}
