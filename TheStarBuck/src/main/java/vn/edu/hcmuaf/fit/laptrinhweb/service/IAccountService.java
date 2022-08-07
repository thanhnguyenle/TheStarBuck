package vn.edu.hcmuaf.fit.laptrinhweb.service;

import vn.edu.hcmuaf.fit.laptrinhweb.model.Account;

import java.util.List;

public interface IAccountService {
    List<Account> findAll();
    Long save(Account account);
    int getAmountItem();
}
