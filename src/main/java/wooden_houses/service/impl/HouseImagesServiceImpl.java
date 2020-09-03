package wooden_houses.service.impl;

import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
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
    public HouseImages save(MultipartFile image1, MultipartFile image2, MultipartFile image3, MultipartFile image4,
                            MultipartFile image5, MultipartFile image6, MultipartFile image7, MultipartFile image8,
                            MultipartFile image9, MultipartFile image10, MultipartFile image11, MultipartFile image12,
                            MultipartFile groundFloor, MultipartFile firstFloor, MultipartFile basement) {
        return repository.save(new HouseImages(image1.getBytes(), image2.getBytes(), image3.getBytes(), image4.getBytes(),
                image5.getBytes(), image6.getBytes(), image7.getBytes(), image8.getBytes(), image9.getBytes(),
                image10.getBytes(), image11.getBytes(), image12.getBytes(), groundFloor.getBytes(), firstFloor.getBytes(),
                basement.getBytes()));
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
    public HouseImages update(int id, MultipartFile image1, MultipartFile image2, MultipartFile image3, MultipartFile image4,
                              MultipartFile image5, MultipartFile image6, MultipartFile image7, MultipartFile image8,
                              MultipartFile image9, MultipartFile image10, MultipartFile image11, MultipartFile image12,
                              MultipartFile groundFloor, MultipartFile firstFloor, MultipartFile basement) {
        return repository.save(new HouseImages(id, image1.getBytes(), image2.getBytes(), image3.getBytes(), image4.getBytes(),
                image5.getBytes(), image6.getBytes(), image7.getBytes(), image8.getBytes(), image9.getBytes(),
                image10.getBytes(), image11.getBytes(), image12.getBytes(), groundFloor.getBytes(), firstFloor.getBytes(),
                basement.getBytes()));
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