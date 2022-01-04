package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.ISlideDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.AccountDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.SlideDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Slide;
import vn.edu.hcmuaf.fit.laptrinhweb.service.ISlideService;

import java.util.List;

public class SlideService implements ISlideService {
    private final SlideDAO slideDAO = SlideDAO.getInstance();
    private static SlideService instance;
    private SlideService() {
    }

    public static SlideService getInstance(){
        if(instance==null)
            instance = new SlideService();
        return instance;
    }

    @Override
    public List<Slide> findAll() {
        return slideDAO.findAll();
    }

    @Override
    public Long save(Slide slide) {
        return slideDAO.save(slide);
    }

    @Override
    public List<Slide> printTypeSlide(String type, int number) {
        return slideDAO.printTypeSlide(type,number);
    }
}
