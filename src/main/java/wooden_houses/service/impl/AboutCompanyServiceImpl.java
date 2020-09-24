package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.CompanyInfo;
import wooden_houses.repository.AboutCompanyRepository;
import wooden_houses.service.AboutCompanyService;

import java.util.List;

@Service
public class AboutCompanyServiceImpl implements AboutCompanyService {

    @Autowired
    private AboutCompanyRepository repository;

    @Override
    public CompanyInfo save(CompanyInfo company) {
        return repository.save(company);
    }

    @Override
    public CompanyInfo findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<CompanyInfo> findAll() {
        return (List<CompanyInfo>) repository.findAll();
    }

    @Override
    public CompanyInfo update(CompanyInfo company) {
        return repository.save(company);
    }

    @Override
    public void delete(int id) {
        repository.deleteById(id);
    }

    @Override
    public boolean isExists(int id) {
        return repository.existsById(id);
    }
}