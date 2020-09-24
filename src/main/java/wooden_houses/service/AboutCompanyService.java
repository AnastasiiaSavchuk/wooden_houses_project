package wooden_houses.service;

import wooden_houses.domain.CompanyInfo;

import java.util.List;

public interface AboutCompanyService {

    CompanyInfo save(CompanyInfo company);

    CompanyInfo findById(int id);

    List<CompanyInfo> findAll();

    CompanyInfo update(CompanyInfo company);

    void delete(int id);

    boolean isExists(int id);
}