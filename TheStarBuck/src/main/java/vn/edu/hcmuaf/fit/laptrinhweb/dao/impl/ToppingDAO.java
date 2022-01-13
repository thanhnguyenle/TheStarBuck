package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IToppingDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.ToppingMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Topping;

import java.util.List;
import java.util.Map;

public class ToppingDAO extends  AbstractDAO<Topping> implements IToppingDAO {
    private static ToppingDAO instance;

    private  ToppingDAO(){}

    public static ToppingDAO getInstance(){
        if(instance == null){
            instance = new ToppingDAO();
        }
        return instance;
    }

    @Override
    public List<Topping> findAll() {
        List<Topping> toppings = query(QUERIES.TOPPING.GET_LIST, new ToppingMapper());
        return toppings;
    }

    @Override
    public Long save(Topping topping) {
        if(topping.getId().equals("")){
            return addItem(topping);
        } else
        return updateItem(topping);
    }

    @Override
    public Long deleteItem(String id) {
        return null;
    }

    @Override
    public Topping getItem(String id) {
        return null;
    }

    @Override
    public Map<String, Topping> getAll() {
        return null;
    }

    @Override
    public Long addItem(Topping topping) {
        return null;
    }

    @Override
    public Long updateItem(Topping topping) {
        return null;
    }
}
