package wooden_houses.service;

import wooden_houses.domain.AboutCompany;

import java.util.List;

public interface AboutCompanyService {

    AboutCompany save(AboutCompany company);

    AboutCompany findOne(int id);

    List<AboutCompany> findAll();

    AboutCompany update(AboutCompany company);

    void delete(int id);

    boolean isExists(int id);
}