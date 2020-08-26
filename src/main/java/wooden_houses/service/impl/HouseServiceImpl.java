package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.House;
import wooden_houses.repository.HouseRepository;
import wooden_houses.service.HouseService;

import java.util.List;

@Service
public class HouseServiceImpl implements HouseService {

    @Autowired
    private HouseRepository repository;

    @Override
    public House save(House house) {
        return repository.save(house);
    }

    @Override
    public House findOne(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<House> findAll() {
        return repository.findAll();
    }

    @Override
    public House update(House house) {
        return repository.save(house);
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