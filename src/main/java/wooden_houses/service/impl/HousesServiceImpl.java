package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.Houses;
import wooden_houses.repository.HousesRepository;
import wooden_houses.service.HousesService;

import java.util.List;

@Service
public class HousesServiceImpl implements HousesService {

    @Autowired
    private HousesRepository repository;

    @Override
    public Houses save(Houses houses) {
        return repository.save(houses);
    }

    @Override
    public Houses findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<Houses> findAll() {
        return repository.findAll();
    }

    @Override
    public Houses update(Houses houses) {
        return repository.save(houses);
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