package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.AboutCompany;
import wooden_houses.repository.AboutCompanyRepository;
import wooden_houses.service.AboutCompanyService;


import java.util.List;

@Service
public class AboutCompanyServiceImpl implements AboutCompanyService {

    @Autowired
    private AboutCompanyRepository repository;

    @Override
    public AboutCompany save(AboutCompany company) { return repository.save(company);
    }

    @Override
    public AboutCompany findOne(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<AboutCompany> findAll() {
        return (List<AboutCompany>) repository.findAll();
    }

    @Override
    public AboutCompany update(AboutCompany company) {
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