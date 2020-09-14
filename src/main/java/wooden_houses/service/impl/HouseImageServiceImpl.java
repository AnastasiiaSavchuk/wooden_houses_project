package wooden_houses.service.impl;

import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.HouseImage;
import wooden_houses.repository.HouseImageRepository;
import wooden_houses.service.HouseImageService;

import java.util.List;

@Service
public class HouseImageServiceImpl implements HouseImageService {

    @Autowired
    private HouseImageRepository repository;

    @SneakyThrows
    @Override
    public HouseImage save(HouseImage houseImage) {
        return repository.save(houseImage);
    }

    @Override
    public HouseImage findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<HouseImage> findAll() {
        return repository.findAll();
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