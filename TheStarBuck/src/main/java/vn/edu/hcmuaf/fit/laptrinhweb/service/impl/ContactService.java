package vn.edu.hcmuaf.fit.laptrinhweb.service.impl;

import vn.edu.hcmuaf.fit.laptrinhweb.dao.impl.ContactDAO;
import vn.edu.hcmuaf.fit.laptrinhweb.model.Contact;
import vn.edu.hcmuaf.fit.laptrinhweb.service.IContactService;

import java.util.List;

public class ContactService implements IContactService {
    private ContactDAO contactDAO = ContactDAO.getInstance();
    private static ContactService instance;
    private ContactService(){}
    public static  ContactService getInstance(){
        if(instance == null){
            instance = new ContactService();
        }
        return instance;
    }
    @Override
    public List<Contact> findAll() {
        return contactDAO.findAll();
    }

    @Override
    public Long save(Contact contact) {
        return contactDAO.save(contact);
    }

    @Override
    public Long deleteItem(String id) {
        return null;
    }

    @Override
    public Contact getItem(String id) {
        return null;
    }
}
