package wooden_houses.service;

import wooden_houses.domain.HouseImages;

import java.util.List;

public interface HouseImagesService {

    HouseImages save(HouseImages houseImages);

    HouseImages findOne(int id);

    List<HouseImages> findAll();

    HouseImages update(HouseImages houseImages);

    void delete(int id);

    boolean isExists(int id);
}