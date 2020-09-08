package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.HouseConstruction;
import wooden_houses.repository.HouseConstructionRepository;
import wooden_houses.service.HouseConstructionService;

import java.util.List;

@Service
public class HouseConstructionServiceImpl implements HouseConstructionService {

    @Autowired
    private HouseConstructionRepository repository;

    @Override
    public HouseConstruction save(HouseConstruction houseConstruction) {
        return repository.save(houseConstruction);
    }

    @Override
    public HouseConstruction findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<HouseConstruction> findAll() {
        return repository.findAll();
    }

    @Override
    public HouseConstruction update(HouseConstruction houseConstruction) {
        return repository.save(houseConstruction);
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