package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IFeedbackDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.FeedBack;

import java.util.List;
import java.util.Map;

public class FeedbackDAO extends  AbstractDAO<FeedBack> implements IFeedbackDAO {
    private static FeedbackDAO instance;
    private FeedbackDAO(){}
    public static FeedbackDAO getInstance(){
        if(instance == null){
            instance = new FeedbackDAO();
        }
        return instance;
    }
    @Override
    public List<FeedBack> findAll() {
        return null;
    }

    @Override
    public Long save(FeedBack feedBack) {
        return null;
    }

    @Override
    public Long deleteItem(String id) {
        return null;
    }

    @Override
    public FeedBack getItem(String id) {
        return null;
    }

    @Override
    public Map<String, FeedBack> getAll() {
        return null;
    }

    @Override
    public Long addItem(FeedBack feedBack) {
        return null;
    }

    @Override
    public Long updateItem(FeedBack feedBack) {
        return null;
    }
}
