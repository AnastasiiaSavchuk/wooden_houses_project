package wooden_houses.service;

import org.springframework.web.multipart.MultipartFile;
import wooden_houses.domain.HouseImages;

import java.util.List;

public interface HouseImagesService {

    HouseImages save(MultipartFile image1, MultipartFile image2, MultipartFile image3, MultipartFile image4,
                     MultipartFile image5, MultipartFile image6, MultipartFile image7, MultipartFile image8,
                     MultipartFile image9, MultipartFile image10, MultipartFile image11, MultipartFile image12,
                     MultipartFile groundFloor, MultipartFile firstFloor, MultipartFile basement);

    HouseImages findOne(int id);

    List<HouseImages> findAll();

    HouseImages update(MultipartFile image1, MultipartFile image2, MultipartFile image3, MultipartFile image4,
                       MultipartFile image5, MultipartFile image6, MultipartFile image7, MultipartFile image8,
                       MultipartFile image9, MultipartFile image10, MultipartFile image11, MultipartFile image12,
                       MultipartFile groundFloor, MultipartFile firstFloor, MultipartFile basement);

    void delete(int id);

    boolean isExists(int id);
}