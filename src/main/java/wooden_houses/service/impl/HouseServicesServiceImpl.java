package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.HouseServices;
import wooden_houses.repository.HouseServicesRepository;
import wooden_houses.service.HouseServicesService;

import java.util.List;

@Service
public class HouseServicesServiceImpl implements HouseServicesService {

    @Autowired
    private HouseServicesRepository repository;

    @Override
    public HouseServices save(HouseServices houseServices) {
        return repository.save(houseServices);
    }

    @Override
    public HouseServices findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<HouseServices> findAll() {
        return repository.findAll();
    }

    @Override
    public HouseServices update(HouseServices houseServices) {
        return repository.save(houseServices);
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