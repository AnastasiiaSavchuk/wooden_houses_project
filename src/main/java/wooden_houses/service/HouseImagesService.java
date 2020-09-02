package wooden_houses.service;

import org.springframework.web.multipart.MultipartFile;
import wooden_houses.domain.HouseImages;

import java.util.List;

public interface HouseImagesService {

    HouseImages save(MultipartFile image);

    HouseImages findOne(int id);

    List<HouseImages> findAll();

    HouseImages update(MultipartFile image);

    void delete(int id);

    boolean isExists(int id);
}