package wooden_houses.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wooden_houses.domain.HouseImage;
import wooden_houses.repository.HouseImageRepository;
import wooden_houses.service.HouseImageService;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class HouseImageServiceImpl implements HouseImageService {

    @Autowired
    private HouseImageRepository repository;

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
    public List<Integer> getAllIds() {
        List<HouseImage> houseImages = findAll();
        List<Integer> ids = houseImages.stream().map(HouseImage::getId).collect(Collectors.toList());
        return ids;
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