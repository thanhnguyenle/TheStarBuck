package vn.edu.hcmuaf.fit.laptrinhweb.service;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Contact;

import java.util.List;

public interface IContactService {
    List<Contact> findAll();
    Long save(Contact contact);
    Long deleteItem(String id);
    Contact getItem(String id);
}
