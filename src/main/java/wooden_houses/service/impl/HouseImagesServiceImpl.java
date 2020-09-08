package wooden_houses.service.impl;

import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import wooden_houses.domain.HouseImages;
import wooden_houses.repository.HouseImagesRepository;
import wooden_houses.service.HouseImagesService;

import java.io.IOException;
import java.util.List;

@Service
public class HouseImagesServiceImpl implements HouseImagesService {

    @Autowired
    private HouseImagesRepository repository;

    @SneakyThrows
    @Override
    public HouseImages save(MultipartFile image, int houseId) {
        HouseImages images = new HouseImages(image.getBytes(), houseId);
        return repository.save(images);
    }

    @Override
    public HouseImages findById(int id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public List<HouseImages> findByHouseId(int houseId) {
        return repository.findByHouseId(houseId);
    }

    @Override
    public List<HouseImages> findAll() {
        return repository.findAll();
    }

    @Override
    public HouseImages update(int id, MultipartFile image, int houseId) throws IOException {
        HouseImages houseImage = new HouseImages(image.getBytes(), houseId);
        return repository.save(houseImage);
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