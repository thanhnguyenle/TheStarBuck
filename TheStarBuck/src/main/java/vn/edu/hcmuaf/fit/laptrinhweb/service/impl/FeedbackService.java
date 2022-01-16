package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.FeedbackDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.FeedBack;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IFeedbackService;

import java.util.List;

public class FeedbackService implements IFeedbackService {
    private static  FeedbackService instance;
    private FeedbackDAO feedbackDAO;
    private FeedbackService(){}
    public static FeedbackService getInstance(){
        if(instance == null){
            instance = new FeedbackService();
        }
        return instance;
    }
    @Override
    public List<FeedBack> findAll() {
        return feedbackDAO.findAll();
    }

    @Override
    public Long save(FeedBack feedBack) {
        return feedbackDAO.save(feedBack);
    }

    @Override
    public Long deleteItem(String id) {
        return feedbackDAO.deleteItem(id);
    }

    @Override
    public FeedBack getItem(String id) {
        return feedbackDAO.getItem(id);
    }
}
