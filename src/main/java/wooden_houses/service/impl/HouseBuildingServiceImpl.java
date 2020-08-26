package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.HouseBuilding;
import wooden_houses.repository.HouseBuildingRepository;
import wooden_houses.service.HouseBuildingService;

import java.util.List;

@Service
public class HouseBuildingServiceImpl implements HouseBuildingService {

    @Autowired
    private HouseBuildingRepository repository;

    @Override
    public HouseBuilding save(HouseBuilding houseBuilding) {
        return repository.save(houseBuilding);
    }

    @Override
    public HouseBuilding findOne(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<HouseBuilding> findAll() {
        return repository.findAll();
    }

    @Override
    public HouseBuilding update(HouseBuilding houseBuilding) {
        return repository.save(houseBuilding);
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