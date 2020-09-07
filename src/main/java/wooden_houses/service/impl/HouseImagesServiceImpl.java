package wooden_houses.service.impl;

import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.HouseImages;
import wooden_houses.repository.HouseImagesRepository;
import wooden_houses.service.HouseImagesService;

import java.util.List;

@Service
public class HouseImagesServiceImpl implements HouseImagesService {

    @Autowired
    private HouseImagesRepository repository;

    @SneakyThrows
    @Override
    public HouseImages save(HouseImages images) {
        return repository.save(images);
    }

    @Override
    public HouseImages findOne(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<HouseImages> findAll() {
        return repository.findAll();
    }

    @SneakyThrows
    @Override
    public HouseImages update(HouseImages images) {
        return repository.save(images);
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