package vn.edu.hcmuaf.fit.laptrinhweb.service;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Post;

import java.util.List;

public interface IPostService {
    List<Post> findAll();
    Long delete(String id);
    Long add(Post post);
    Long update(String id,Post post);
}
