package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.HouseVisualizations;
import wooden_houses.repository.HouseVisualizationsRepository;
import wooden_houses.service.HouseVisualizationsService;

import java.util.List;

@Service
public class HouseVisualizationsServiceImpl implements HouseVisualizationsService {

    @Autowired
    private HouseVisualizationsRepository repository;

    @Override
    public HouseVisualizations save(HouseVisualizations houseVisualizations) {
        return repository.save(houseVisualizations);
    }

    @Override
    public HouseVisualizations findOne(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<HouseVisualizations> findAll() {
        return repository.findAll();
    }

    @Override
    public HouseVisualizations update(HouseVisualizations houseVisualizations) {
        return repository.save(houseVisualizations);
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