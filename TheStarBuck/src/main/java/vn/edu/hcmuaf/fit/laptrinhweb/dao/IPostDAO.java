package vn.edu.hcmuaf.fit.laptrinhweb.dao;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Post;

import java.util.List;

public interface IPostDAO extends  IGenericDAO<Post>{
    List<Post> findAll();
    Long delete(String id);
    Long add(Post post);
    Long update(String id,Post post);
}
