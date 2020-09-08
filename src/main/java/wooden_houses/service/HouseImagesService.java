package wooden_houses.service;

import org.springframework.web.multipart.MultipartFile;
import wooden_houses.domain.HouseImages;

import java.io.IOException;
import java.util.List;

public interface HouseImagesService {

    HouseImages save(MultipartFile image, int houseId);

    HouseImages findById(int id);

    List<HouseImages> findByHouseId(int houseId);

    List<HouseImages> findAll();

    HouseImages update(int id, MultipartFile image, int houseId) throws IOException;

    void delete(int id);

    boolean isExists(int id);
}