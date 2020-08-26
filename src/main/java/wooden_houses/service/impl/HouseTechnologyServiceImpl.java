package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.HouseTechnology;
import wooden_houses.repository.HouseTechnologyRepository;
import wooden_houses.service.HouseTechnologyService;

import java.util.List;

@Service
public class HouseTechnologyServiceImpl implements HouseTechnologyService {

    @Autowired
    private HouseTechnologyRepository repository;

    @Override
    public HouseTechnology save(HouseTechnology houseTechnology) {
        return repository.save(houseTechnology);
    }

    @Override
    public HouseTechnology findOne(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<HouseTechnology> findAll() {
        return repository.findAll();
    }

    @Override
    public HouseTechnology update(HouseTechnology houseTechnology) {
        return repository.save(houseTechnology);
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