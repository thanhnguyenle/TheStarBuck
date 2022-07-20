package vn.edu.hcmuaf.fit.laptrinhweb.dao.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.IPostDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.db.QUERIES;
import vn.edu.hcmuaf.fit.laptrinhweb.mapper.impl.PostMapper;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Post;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class PostDAO extends AbstractDAO<Post> implements IPostDAO {
    private static PostDAO instance;
    private PostDAO(){}
    public static PostDAO getInstance(){
        if (instance == null){
            instance = new PostDAO();
        }
        return instance;
    }

    @Override
    public List<Post> findAll() {
        return query(QUERIES.POST.GET_LIST,new PostMapper());
    }

    @Override
    public Long delete(String id) {
        return delete(QUERIES.POST.DELETE,id);
    }

    @Override
    public Long add(Post post) {
        return insert(QUERIES.POST.CREATE,post.getId(),null,post.getDescription(),post.getPost_content(),post.getAuthor(),post.getImage_url(),post.getPost_url(),post.getDate() );
    }

    @Override
    public Long update(String id, Post post) {
        return update(QUERIES.POST.UPDATE,post.getTitle(),post.getDescription(),post.getPost_content(),post.getAuthor(),post.getImage_url(),post.getPost_url(),post.getDate() );
    }

}
